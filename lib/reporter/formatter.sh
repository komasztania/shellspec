#shellcheck shell=sh disable=SC2004,SC2034

: "${meta_shell:-}" "${meta_shell_type:-}" "${meta_shell_version:-}"
: "${example_index:-}" "${detail_index:-}"
: "${field_specfile:-}" "${field_type:-}" "${field_tag:-}" "${field_range:-}"
: "${field_lineno:-}" "${field_color:-}"

use proxy padding each

buffer conclusion notable_examples failure_examples focused_blocks

formatter_begin() { :; }
formatter_format() { :; }
formatter_end() { :; }

count() {
  specfile_count=0 example_count=0
  #shellcheck shell=sh disable=SC2046
  set -- $($SHELLSPEC_SHELL "$SHELLSPEC_LIBEXEC/shellspec-count.sh" "$@")
  specfile_count=$1 example_count=$2
}

methods() {
  putsn "Running: $meta_shell" \
    "[$meta_shell_type${meta_shell_version:+ }$meta_shell_version]"
}

conclusion_begin() { :; }

conclusion_format() {
  [ "$field_type" = "statement" ] || return 0
  case $field_tag in (evaluation|log) return 0; esac
  [ "$example_index" ] || return 0

  conclusion_set_if_empty "${LF}Examples:${LF}"
  label="  $example_index) " indent=''
  padding indent ' ' ${#label}
  if [ "$detail_index" -eq 1 ]; then
    conclusion_append "${WHITE}${label}${field_description:-}${RESET}"
    if [ "${field_evaluation:-}" ]; then
      conclusion_append "${BOLD}${CYAN}${indent}${field_evaluation:-}${RESET}"
      conclusion_append
    fi
  fi

  label="${indent}${example_index}.${detail_index}) " indent=''
  padding indent ' ' ${#label}

  case $field_tag in
    bad) tag='Failure' ;;
    warn) tag='Warning' ;;
    *) tag='' ;;
  esac

  message="${tag}${tag:+: }${field_message:-}" note=${field_note:-}
  conclusion_append "${label}${field_color}${message} ${note}${RESET}"

  message=${LF}${field_failure_message:-} text=''
  while [ "$text" != "$message" ]; do
    text=${message%%${LF}*} message=${message#*${LF}}
    conclusion_append "  ${indent}${field_color}${text}${RESET}"
  done

  if [ "$note" = FIXED ]; then
    conclusion_append "${indent}${CYAN}#" \
      "Expected pending to fail. No error was raised.${RESET}"
  fi
  conclusion_append "${indent}${CYAN}#" \
    "${field_specfile}:${field_lineno}${RESET}${LF}"
}

conclusion_end() {
  conclusion_flush
}

finished() {
  putsn "Finished in ${time_real:-?} seconds" \
    "(user ${time_user:-?} seconds, sys ${time_sys:-?} seconds)"
}

summary() {
  summary=''
  callback() {
    [ "${1%% *}" ] || return 0
    summary="${summary}${summary:+, }$1"
    [ "${1%% *}" -eq 1 ] && return 0
    case $summary in (*x) summary="${summary}e"; esac
    summary="${summary}s"
  }

  each callback "${total_count:-0} example" "${failed_count:-0} failure" \
                "${warned_count:-} warning" "${skipped_count:-} skip"
  if [ "${suppressed_skipped_count:-}" ]; then
    summary="${summary} (muted $suppressed_skipped_count skip"
    [ "$suppressed_skipped_count" -ne 1 ] && summary="${summary}s"
    summary="${summary})"
  fi
  each callback "${todo_count:-} pending"   "${fixed_count:-} fix"
  if [ "${interrupt:-}" ]; then
    summary="${summary}, aborted by an interrupt"
  elif [ "${aborted:-}" ]; then
    summary="${summary}, aborted by an unexpected error"
  fi
  if [ "${no_examples:-}" ]; then
    summary="${summary}, no examples found"
  fi

  [ "${warned_count:-}" ] && color=$YELLOW || color=$GREEN
  if [ "${failed_count:-}${aborted:-}${interrupt:-}${no_examples:-}" ]; then
    color=$RED
  fi
  putsn "${color}${summary}${RESET}${LF}"
}

references_begin() { :; }

references_format() {
  if [ "$field_type" = "begin" ] && [ "${field_focused:-}" = "focus" ]; then
    set -- "${field_color}shellspec" \
      "${field_specfile}:${field_range%-*}${RESET}" \
      "${CYAN}# ${field_description} ${field_note:-}${RESET}"
    focused_blocks_set_if_empty "Focused groups / examples:${LF}"
    focused_blocks_append "$@"
  fi
  [ "$field_type" = "result" ] || return 0
  [ "${example_index}" ] || return 0

  set -- "${field_color}shellspec" \
    "${field_specfile}:${field_range%-*}${RESET}" \
    "${CYAN}# ${example_index}) ${field_description} ${field_note:-}${RESET}"

  if [ "${field_error:-}" ]; then
    failure_examples_set_if_empty "Failure examples:${LF}"
    failure_examples_append "$@"
  else
    notable_examples_set_if_empty "Notable examples: " \
      "(listed here are expected and do not affect your suite's status)${LF}"
    notable_examples_append "$@"
  fi
}

references_end() {
  notable_examples_flush
  failure_examples_flush
  focused_blocks_flush
}