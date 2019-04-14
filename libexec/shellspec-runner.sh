#!/bin/sh
#shellcheck disable=SC2004

set -eu

[ "${ZSH_VERSION:-}" ] && setopt shwordsplit

# shellcheck source=lib/libexec/runner.sh
. "${SHELLSPEC_LIB:-./lib}/libexec/runner.sh"
use readfile unixtime trim
load parser

error() {
  if [ "$SHELLSPEC_COLOR" ]; then
    printf '\33[2;31m%s\33[0m\n' "${*:-}" >&2
  else
    printf '%s\n' "${*:-}" >&2
  fi
}

wait_reporter_finished() {
  [ -e "$1" ] || return 0
  read -r reporter_pid < "$1"
  start=$(unixtime)
  while kill -0 "$reporter_pid" 2>/dev/null; do
    current=$(unixtime)
    [ $(($current - $start)) -gt 5 ] && break # timeout
    sleep 0
  done
}

mktempdir "$SHELLSPEC_TMPBASE"
cleanup() {
  if (trap - INT) 2>/dev/null; then trap '' INT; fi
  [ "$SHELLSPEC_TMPBASE" ] || return 0
  tmpbase="$SHELLSPEC_TMPBASE"
  SHELLSPEC_TMPBASE=''
  wait_reporter_finished "$tmpbase/reporter_pid"
  rmtempdir "$tmpbase"
}
trap 'cleanup' EXIT

interrupt() {
  trap '' TERM # posh: Prevent display 'Terminated'.
  kill -TERM 0
  cleanup
  exit 130
}

if (trap - INT) 2>/dev/null; then trap 'interrupt' INT; fi
if (trap - TERM) 2>/dev/null; then trap ':' TERM; fi

executor() {
  executor="$SHELLSPEC_LIBEXEC/shellspec-executor.sh"

  # shellcheck disable=SC2086
  command $SHELLSPEC_TIME $SHELLSPEC_SHELL "$executor" "$@" \
    3>&2 2>"$SHELLSPEC_TIME_LOG"
}

reporter() {
  $SHELLSPEC_SHELL "$SHELLSPEC_LIBEXEC/shellspec-reporter.sh" "$@"
}

error_handler() {
  marker='' error_file=''
  while IFS= read -r line; do
    case $line in
      ${SHELLSPEC_SYN}shellspec_marker:*)
        [ "${first_error-1}" ] || continue
        line=${line#${SHELLSPEC_SYN}shellspec_marker:}
        marker=${line%%${SHELLSPEC_TAB}*}
        error_file=${line#*${SHELLSPEC_TAB}}
        ;;
      *)
        [ "${first_error-1}" ] && first_error='' && error
        error "$line"
        ;;
    esac
  done

  display_unexpected_error "$marker" "$error_file"

  if [ "${first_error+x}" ]; then
    exit "$SHELLSPEC_UNEXPECTED_STDERR"
  fi
}

display_unexpected_error() {
  specfile=${1% *} lineno=${1##* } error_file=$2 error=''
  [ "$specfile" ] || return 0
  case $lineno in
    BOF) lineno=1 ;;
    EOF) return 0 ;; # no error
  esac

  range=$(detect_range "$lineno" < "$specfile")
  if [ -e "$error_file" ]; then
    readfile error "$error_file"
    error "$(puts "$error")"
  fi
  error "The specfile aborted at line $range in '$specfile'"
  error
  first_error=''
}

set_exit_status() {
  return "$1"
}

# I want to process with non-blocking output
# and the stdout of runner streams to the reporter
# and capture stderr both of the runner and the reporter
# and the stderr streams to error hander
# and also handle both exit status. As a result of
( ( ( ( set -e; executor "$@"; echo $? >&5 ) \
  | reporter "$@" >&3; echo $? >&5 ) 2>&1 \
  | error_handler >&4; echo $? >&5 ) 5>&1 \
  | (
      read -r xs1; read -r xs2; read -r xs3
      if [ "$xs2" = "$SHELLSPEC_SPEC_FAILURE_CODE" ]; then
        xs=$SHELLSPEC_SPEC_FAILURE_CODE
      else
        for xs in "$xs1" "$xs2" "$xs3"; do
          case $xs in (0 | "") continue; esac
          error "An unexpected error occurred or output to the stderr." \
            "[$xs1] [$xs2] [$xs3]"
          break
        done
      fi
      set_exit_status "${xs:-1}"
    )
) 3>&1 4>&2 &&:
exit_status=$?

case $exit_status in
  0) ;; # Running specs exit with successfully.
  $SHELLSPEC_SPEC_FAILURE_CODE) ;; # Running specs exit with failure.
  *) error "Fatal error occurred, terminated with exit status $exit_status."
esac

exit "$exit_status"
