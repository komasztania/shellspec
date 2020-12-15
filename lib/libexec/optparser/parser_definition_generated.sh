# shellcheck shell=sh
# Generated by getoptions (BEGIN)
# URL: https://github.com/ko1nksm/getoptions (v2.5.0)
export SHELLSPEC_SHELL=''
export SHELLSPEC_REQUIRES=''
export SHELLSPEC_OPTIONS=''
export SHELLSPEC_LOAD_PATH=''
export SHELLSPEC_HELPERDIR='spec'
export SHELLSPEC_SANDBOX=''
export SHELLSPEC_SANDBOX_PATH=''
export SHELLSPEC_EXECDIR='@project'
export SHELLSPEC_ENV_FROM=''
export SHELLSPEC_WARNING_AS_FAILURE='1'
export SHELLSPEC_FAIL_FAST_COUNT=''
export SHELLSPEC_FAIL_NO_EXAMPLES=''
export SHELLSPEC_FAIL_LOW_COVERAGE=''
export SHELLSPEC_FAILURE_EXIT_CODE='101'
export SHELLSPEC_ERROR_EXIT_CODE='102'
export SHELLSPEC_PROFILER=''
export SHELLSPEC_PROFILER_LIMIT='10'
export SHELLSPEC_LOGFILE='/dev/tty'
export SHELLSPEC_TMPDIR=${TMPDIR:-${TMP:-/tmp}}
export SHELLSPEC_KEEP_TMPDIR=''
export SHELLSPEC_QUICK=''
export SHELLSPEC_WORKERS='0'
OPTARG=''; random SHELLSPEC
OPTARG='0'; xtrace SHELLSPEC
export SHELLSPEC_DRYRUN=''
export SHELLSPEC_BANNER='1'
export SHELLSPEC_REPORTDIR='report'
export SHELLSPEC_FORMATTER='progress'
export SHELLSPEC_GENERATORS=''
export SHELLSPEC_SKIP_MESSAGE='verbose'
export SHELLSPEC_PENDING_MESSAGE='verbose'
export SHELLSPEC_DEPRECATION_LOG='1'
export SHELLSPEC_FOCUS_FILTER=''
export SHELLSPEC_PATTERN='*_spec.sh'
export SHELLSPEC_EXAMPLE_FILTER=''
export SHELLSPEC_TAG_FILTER=''
export SHELLSPEC_DEFAULT_PATH='spec'
export SHELLSPEC_DEREFERENCE=''
export SHELLSPEC_COVERAGEDIR='coverage'
export SHELLSPEC_KCOV=''
export SHELLSPEC_KCOV_PATH='kcov'
export SHELLSPEC_KCOV_OPTS=''
export SHELLSPEC_COVERAGE_KSH_WORKAROUND=''
OPTARG='runner'; mode SHELLSPEC
export SHELLSPEC_DOCKER_IMAGE=''
params=''
# shellcheck disable=SC2004,SC2034,SC2145,SC2194
optparser_parse() {
  OPTIND=$(($#+1))
  while OPTARG= && [ $# -gt 0 ]; do
    set -- "${1%%\=*}" "${1#*\=}" "$@"
    while [ ${#1} -gt 2 ]; do
      case $1 in (*[!a-zA-Z0-9_-]*) break; esac
      case '--shell' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --shell"
      esac
      case '--require' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --require"
      esac
      case '--options' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --options"
      esac
      case '--load-path' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --load-path"
      esac
      case '--helperdir' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --helperdir"
      esac
      case '--path' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --path"
      esac
      case '--sandbox' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --sandbox"
      esac
      case '--no-sandbox' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-sandbox"
      esac
      case '--sandbox-path' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --sandbox-path"
      esac
      case '--execdir' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --execdir"
      esac
      case '--env' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --env"
      esac
      case '--env-from' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --env-from"
      esac
      case '--warning-as-failure' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --warning-as-failure"
      esac
      case '--no-warning-as-failure' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-warning-as-failure"
      esac
      case '--fail-fast' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --fail-fast"
      esac
      case '--no-fail-fast' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-fail-fast"
      esac
      case '--fail-no-examples' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --fail-no-examples"
      esac
      case '--no-fail-no-examples' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-fail-no-examples"
      esac
      case '--fail-low-coverage' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --fail-low-coverage"
      esac
      case '--no-fail-low-coverage' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-fail-low-coverage"
      esac
      case '--failure-exit-code' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --failure-exit-code"
      esac
      case '--error-exit-code' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --error-exit-code"
      esac
      case '--profile' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --profile"
      esac
      case '--no-profile' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-profile"
      esac
      case '--profile-limit' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --profile-limit"
      esac
      case '--boost' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --boost"
      esac
      case '--no-boost' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-boost"
      esac
      case '--log-file' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --log-file"
      esac
      case '--tmpdir' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --tmpdir"
      esac
      case '--keep-tmpdir' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --keep-tmpdir"
      esac
      case '--chdir' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --chdir"
      esac
      case '--directory' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --directory"
      esac
      case '--quick' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --quick"
      esac
      case '--no-quick' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-quick"
      esac
      case '--repair' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --repair"
      esac
      case '--only-failures' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --only-failures"
      esac
      case '--next-failure' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --next-failure"
      esac
      case '--jobs' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --jobs"
      esac
      case '--random' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --random"
      esac
      case '--xtrace' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --xtrace"
      esac
      case '--xtrace-only' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --xtrace-only"
      esac
      case '--dry-run' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --dry-run"
      esac
      case '--banner' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --banner"
      esac
      case '--no-banner' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-banner"
      esac
      case '--reportdir' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --reportdir"
      esac
      case '--format' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --format"
      esac
      case '--output' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --output"
      esac
      case '--color' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --color"
      esac
      case '--no-color' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-color"
      esac
      case '--skip-message' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --skip-message"
      esac
      case '--pending-message' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --pending-message"
      esac
      case '--quiet' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --quiet"
      esac
      case '--show-deprecations' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --show-deprecations"
      esac
      case '--hide-deprecations' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --hide-deprecations"
      esac
      case '--focus' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --focus"
      esac
      case '--pattern' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --pattern"
      esac
      case '--example' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --example"
      esac
      case '--tag' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --tag"
      esac
      case '--default-path' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --default-path"
      esac
      case '--dereference' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --dereference"
      esac
      case '--covdir' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --covdir"
      esac
      case '--kcov' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --kcov"
      esac
      case '--no-kcov' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --no-kcov"
      esac
      case '--kcov-path' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --kcov-path"
      esac
      case '--kcov-options' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --kcov-options"
      esac
      case '--init' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --init"
      esac
      case '--gen-bin' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --gen-bin"
      esac
      case '--count' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --count"
      esac
      case '--list' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --list"
      esac
      case '--syntax-check' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --syntax-check"
      esac
      case '--translate' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --translate"
      esac
      case '--task' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --task"
      esac
      case '--docker' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --docker"
      esac
      case '--version' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --version"
      esac
      case '--help' in
        "$1") OPTARG=; break ;;
        $1*) OPTARG="$OPTARG --help"
      esac
      break
    done
    case ${OPTARG# } in
      *\ *)
        eval "set -- $OPTARG $1 $OPTARG"
        OPTIND=$((($#+1)/2)) OPTARG=$1; shift
        while [ $# -gt "$OPTIND" ]; do OPTARG="$OPTARG, $1"; shift; done
        set "Ambiguous option: $1 (could be $OPTARG)" ambiguous "$@"
        error_handler optparser_error "$@" >&2 || exit $?
        echo "$1" >&2
        exit 1 ;;
      ?*)
        [ "$2" = "$3" ] || OPTARG="$OPTARG=$2"
        shift 3; eval 'set -- "${OPTARG# }"' ${1+'"$@"'}; OPTARG= ;;
      *) shift 2
    esac
    case $1 in
      --?*=*) OPTARG=$1; shift
        eval 'set -- "${OPTARG%%\=*}" "${OPTARG#*\=}"' ${1+'"$@"'}
        ;;
      --no-*) unset OPTARG ;;
      -[sOIeCjfoPETD]?*) OPTARG=$1; shift
        eval 'set -- "${OPTARG%"${OPTARG#??}"}" "${OPTARG#??}"' ${1+'"$@"'}
        ;;
      -[!-]?*) OPTARG=$1; shift
        eval 'set -- "${OPTARG%"${OPTARG#??}"}" -"${OPTARG#??}"' ${1+'"$@"'}
        OPTARG= ;;
      +??*) OPTARG=$1; shift
        eval 'set -- "${OPTARG%"${OPTARG#??}"}" +"${OPTARG#??}"' ${1+'"$@"'}
        unset OPTARG ;;
      +*) unset OPTARG ;;
    esac
    case $1 in
      '-s'|'--shell')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_SHELL="$OPTARG"
        shift ;;
      '--require')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        multiple SHELLSPEC_REQUIRES ':' SHELLSPEC
        shift ;;
      '-O'|'--options')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_OPTIONS="$OPTARG"
        shift ;;
      '-I'|'--load-path')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        multiple_rev SHELLSPEC_LOAD_PATH ':' SHELLSPEC
        shift ;;
      '--helperdir')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_HELPERDIR="$OPTARG"
        shift ;;
      '--path')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        set_path PATH SHELLSPEC
        shift ;;
      '--sandbox'|'--no-sandbox')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_SANDBOX="$OPTARG"
        ;;
      '--sandbox-path')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_SANDBOX_PATH="$OPTARG"
        shift ;;
      '--execdir')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_execdir || { set -- check_execdir:$? "$1" check_execdir; break; }
        case $OPTARG in @project | @project/* | @basedir | @basedir/* | @specfile | @specfile/*) ;;
          *) set "pattern:@project | @project/* | @basedir | @basedir/* | @specfile | @specfile/*" "$1"; break
        esac
        export SHELLSPEC_EXECDIR="$OPTARG"
        shift ;;
      '-e'|'--env')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_env_name || { set -- check_env_name:$? "$1" check_env_name; break; }
        set_env SHELLSPEC
        shift ;;
      '--env-from')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_env_file || { set -- check_env_file:$? "$1" check_env_file; break; }
        export SHELLSPEC_ENV_FROM="$OPTARG"
        shift ;;
      '-w'|'+w'|'--warning-as-failure'|'--no-warning-as-failure')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_WARNING_AS_FAILURE="$OPTARG"
        ;;
      '--fail-fast'|'--no-fail-fast')
        set -- "$1" "$@"
        [ ${OPTARG+x} ] && {
          case $1 in --no-*) set "noarg" "${1%%\=*}"; break; esac
          [ "${OPTARG:-}" ] && { shift; OPTARG=$2; } || OPTARG='1'
        } || OPTARG=''
        check_number || { set -- check_number:$? "$1" check_number; break; }
        export SHELLSPEC_FAIL_FAST_COUNT="$OPTARG"
        shift ;;
      '--fail-no-examples'|'--no-fail-no-examples')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_FAIL_NO_EXAMPLES="$OPTARG"
        ;;
      '--fail-low-coverage'|'--no-fail-low-coverage')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_FAIL_LOW_COVERAGE="$OPTARG"
        ;;
      '--failure-exit-code')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_number || { set -- check_number:$? "$1" check_number; break; }
        export SHELLSPEC_FAILURE_EXIT_CODE="$OPTARG"
        shift ;;
      '--error-exit-code')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_number || { set -- check_number:$? "$1" check_number; break; }
        export SHELLSPEC_ERROR_EXIT_CODE="$OPTARG"
        shift ;;
      '-p'|'+p'|'--profile'|'--no-profile')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_PROFILER="$OPTARG"
        ;;
      '--profile-limit')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_number || { set -- check_number:$? "$1" check_number; break; }
        export SHELLSPEC_PROFILER_LIMIT="$OPTARG"
        shift ;;
      '--boost'|'--no-boost')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        boost SHELLSPEC
        ;;
      '--log-file')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_LOGFILE="$OPTARG"
        shift ;;
      '--tmpdir')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_TMPDIR="$OPTARG"
        shift ;;
      '--keep-tmpdir')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_KEEP_TMPDIR="$OPTARG"
        ;;
      '--keep-tempdir')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        deprecated "$1" "Replace with --keep-tmpdir." || { set -- deprecated:$? "$1" deprecated "$1" "Replace with --keep-tmpdir."; break; }
        export SHELLSPEC_KEEP_TMPDIR="$OPTARG"
        ;;
      '-c'|'--chdir')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        directory_not_available || { set -- directory_not_available:$? "$1" directory_not_available; break; }
        export SHELLSPEC_DIRECTORY="$OPTARG"
        ;;
      '-C'|'--directory')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        directory_not_available || { set -- directory_not_available:$? "$1" directory_not_available; break; }
        export SHELLSPEC_DIRECTORY="$OPTARG"
        shift ;;
      '-q'|'+q'|'--quick'|'--no-quick')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_QUICK="$OPTARG"
        ;;
      '-r'|'--repair'|'--only-failures')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        only_failures SHELLSPEC
        ;;
      '-n'|'--next-failure')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        next_failure SHELLSPEC
        ;;
      '-j'|'--jobs')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_number || { set -- check_number:$? "$1" check_number; break; }
        export SHELLSPEC_WORKERS="$OPTARG"
        shift ;;
      '--random')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_random || { set -- check_random:$? "$1" check_random; break; }
        random SHELLSPEC
        shift ;;
      '-x'|'--xtrace')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        xtrace SHELLSPEC
        ;;
      '-X'|'--xtrace-only')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='2' || OPTARG=''
        xtrace SHELLSPEC
        ;;
      '--dry-run')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_DRYRUN="$OPTARG"
        ;;
      '--banner'|'--no-banner')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_BANNER="$OPTARG"
        ;;
      '--reportdir')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_REPORTDIR="$OPTARG"
        shift ;;
      '-f'|'--format')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_formatter || { set -- check_formatter:$? "$1" check_formatter; break; }
        export SHELLSPEC_FORMATTER="$OPTARG"
        shift ;;
      '-o'|'--output')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        check_formatter || { set -- check_formatter:$? "$1" check_formatter; break; }
        multiple SHELLSPEC_GENERATORS ' ' SHELLSPEC
        shift ;;
      '--color'|'--no-color')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_COLOR="$OPTARG"
        ;;
      '--colour'|'--no-colour'|'--force-color'|'--force-colour')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_COLOR="$OPTARG"
        ;;
      '--skip-message')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        case $OPTARG in verbose | moderate | quiet) ;;
          *) set "pattern:verbose | moderate | quiet" "$1"; break
        esac
        export SHELLSPEC_SKIP_MESSAGE="$OPTARG"
        shift ;;
      '--pending-message')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        case $OPTARG in verbose | quiet) ;;
          *) set "pattern:verbose | quiet" "$1"; break
        esac
        export SHELLSPEC_PENDING_MESSAGE="$OPTARG"
        shift ;;
      '--quiet')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        quiet SHELLSPEC
        ;;
      '--show-deprecations')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_DEPRECATION_LOG="$OPTARG"
        ;;
      '--hide-deprecations')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='' || OPTARG=''
        export SHELLSPEC_DEPRECATION_LOG="$OPTARG"
        ;;
      '-F'|'--focus')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_FOCUS_FILTER="$OPTARG"
        ;;
      '-P'|'--pattern')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_PATTERN="$OPTARG"
        shift ;;
      '-E'|'--example')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        multiple SHELLSPEC_EXAMPLE_FILTER '|' SHELLSPEC
        shift ;;
      '-T'|'--tag')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        multiple SHELLSPEC_TAG_FILTER ',' SHELLSPEC
        shift ;;
      '-D')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        deprecated "$1" "Replace with --default-path." || { set -- deprecated:$? "$1" deprecated "$1" "Replace with --default-path."; break; }
        export SHELLSPEC_DEFAULT_PATH="$OPTARG"
        shift ;;
      '--default-path')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_DEFAULT_PATH="$OPTARG"
        shift ;;
      '-L'|'--dereference')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_DEREFERENCE="$OPTARG"
        ;;
      '--covdir')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_COVERAGEDIR="$OPTARG"
        shift ;;
      '--kcov'|'--no-kcov')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_KCOV="$OPTARG"
        ;;
      '--kcov-path')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_KCOV_PATH="$OPTARG"
        shift ;;
      '--kcov-options')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        multiple SHELLSPEC_KCOV_OPTS ' ' SHELLSPEC
        shift ;;
      '--coverage-ksh-workaround')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='1' || OPTARG=''
        export SHELLSPEC_COVERAGE_KSH_WORKAROUND="$OPTARG"
        ;;
      '--init')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='init' || OPTARG=''
        mode SHELLSPEC
        ;;
      '--gen-bin')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='gen-bin' || OPTARG=''
        mode SHELLSPEC
        ;;
      '--count')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='count' || OPTARG=''
        mode SHELLSPEC
        ;;
      '--list')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        case $OPTARG in specfiles | examples | examples:id | examples:lineno | debug) ;;
          *) set "pattern:specfiles | examples | examples:id | examples:lineno | debug" "$1"; break
        esac
        mode SHELLSPEC
        shift ;;
      '--syntax-check')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='syntax-check' || OPTARG=''
        mode SHELLSPEC
        ;;
      '--translate')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='translate' || OPTARG=''
        mode SHELLSPEC
        ;;
      '--task')
        [ "${OPTARG:-}" ] && OPTARG=${OPTARG#*\=} && set "noarg" "$1" && break
        eval '[ ${OPTARG+x} ] &&:' && OPTARG='task' || OPTARG=''
        mode SHELLSPEC
        ;;
      '--docker')
        [ $# -le 1 ] && set "required" "$1" && break
        OPTARG=$2
        export SHELLSPEC_DOCKER_IMAGE="$OPTARG"
        shift ;;
      '-v'|'--version')
        echo "${SHELLSPEC_VERSION}"
        exit 0 ;;
      '-h'|'--help')
        help "$1" SHELLSPEC
        exit 0 ;;
      --)
        shift
        while [ $# -gt 0 ]; do
          params="${params} \"\${$(($OPTIND-$#))}\""
          shift
        done
        break ;;
      [-+]?*)
        set "unknown" "$1"; break ;;
      *)
        params="${params} \"\${$(($OPTIND-$#))}\""
    esac
    shift
  done
  [ $# -eq 0 ] && { OPTIND=1; unset OPTARG; return 0; }
  case $1 in
    unknown) set "Unrecognized option: $2" "$@" ;;
    noarg) set "Does not allow an argument: $2" "$@" ;;
    required) set "Requires an argument: $2" "$@" ;;
    pattern:*) set "Does not match the pattern (${1#*:}): $2" "$@" ;;
    notcmd) set "Not a command: $2" "$@" ;;
    *) set "Validation error ($1): $2" "$@"
  esac
  error_handler optparser_error "$@" >&2 || exit $?
  echo "$1" >&2
  exit 1
}
usage() {
cat<<'GETOPTIONSHERE'
Usage: shellspec [ -c ] [-C <directory>] [options...] [files or directories...]

  Using + instead of - for short options causes reverses the meaning

    -s, --shell SHELL               Specify a path of shell [default: "auto" (the shell running shellspec)]
                                      ShellSpec ignores shebang and runs in the specified shell.
        --require MODULE            Require a MODULE (shell script file)
    -O, --options PATH              Specify the path to an additional options file
    -I, --load-path PATH            Specify PATH to add to $SHELLSPEC_LOAD_PATH (may be used more than once)
        --helperdir DIRECTORY       The directory to load helper files (spec_helper.sh, etc) [default: "spec"]
        --path PATH                 Set PATH environment variable at startup
                                      e.g. --path /bin:/usr/bin, --path "$(getconf PATH)"
        --{no-}sandbox              Force the use of the mock instead of the actual command
                                      Make PATH empty (except "spec/support/bin" and mock dir) and readonly
                                      This is not a security feature and does not provide complete isolation
        --sandbox-path PATH         Make PATH the sandbox path instead of empty [default: empty]
        --execdir @LOCATION[/DIR]   Specify the execution directory of each specfile | [default: @project]
                                      [@project]   Where the ".shellspec" file is located (project root) [default]
                                      [@basedir]   Where the ".shellspec" or ".shellspec-basedir" file is located
                                      [@specfile]  Where the specfile is located
                                      In addition, it can be specified a directory relative to the location
    -e, --env NAME[=VALUE]          Set environment variable
        --env-from ENV-SCRIPT       Set environment variable from shell script file
    -w, --{no-}warning-as-failure   Treat warning as failure [default: enabled]
        --{no-}fail-fast[=COUNT]    Abort the run after first (or COUNT) of failures [default: disabled]
        --{no-}fail-no-examples     Fail if no examples found [default: disabled]
        --{no-}fail-low-coverage    Fail on low coverage [default: disabled]
                                      The coverage threshold is specified by the coverage option
        --failure-exit-code CODE    Override the exit code used when there are failing specs [default: 101]
        --error-exit-code CODE      Override the exit code used when there are fatal errors [default: 102]
    -p, --{no-}profile              Enable profiling and list the slowest examples [default: disabled]
                                      Profiler tries to use 100% ability of 1 CPU (1 core).
                                      Therefore, not recommended for single(-core) CPU.
        --profile-limit N           List the top N slowest examples [default: 10]
        --{no-}boost                Increase the CPU frequency to boost up testing speed [default: disabled]
                                      Equivalent of --profile --profile-limit 0
                                      (Don't worry, this is not overclocking. This is joke option but works.)
        --log-file LOGFILE          Log file for %logger directive and trace [default: "/dev/tty"]
        --tmpdir TMPDIR             Specify temporary directory [default: $TMPDIR, $TMP or "/tmp"]
        --keep-tmpdir               Do not cleanup temporary directory [default: disabled]

  The following options must be specified before other options and cannot be specified in the options file

    -c, --chdir                     Change the current directory to the first path of arguments at the start
    -C, --directory DIRECTORY       Change the current directory at the start

  **** Execution ****

    -q, --{no-}quick                Run not-passed examples if it exists, otherwise run all [default: disabled]
                                      not-passed examples: failure and temporary pending examples
                                      Quick mode is automatically enabled. To disable quick mode,
                                      delete .shellspec-quick.log on the project root directory.
    -r, --repair, --only-failures   Run failure examples only (Depends on quick mode)
    -n, --next-failure              Run failure examples and abort on first failure (Depends on quick mode)
                                      Equivalent of --repair --fail-fast --random none
    -j, --jobs JOBS                 Number of parallel jobs to run [default: 0 (disabled)]
        --random TYPE[:SEED]        Run examples by the specified random type | <[none]> [specfiles] [examples]
                                      [none]          run in the defined order [default]
                                      [specfiles]     randomize the order of specfiles
                                      [examples]      randomize the order of examples (slow)
    -x, --xtrace                    Run examples with trace output of evaluation enabled [default: disabled]
                                      Fall back to --xtrace-only if BASH_XTRACEFD not supported.
    -X, --xtrace-only               Run examples with trace output only enabled [default: disabled]
                                      The evaluation is executed, but the expectations are skipped.
        --dry-run                   Print the formatter output without running any examples [default: disabled]

  **** Output ****

        --{no-}banner               Show banner if exist "<HELPERDIR>/banner(.md)" [default: enabled]
        --reportdir DIRECTORY       Output directory of the report [default: "report"]
    -f, --format FORMATTER          Choose a formatter for display | <[p]> [d] [t] [j] [f] [null] [debug]
                                      [p]rogress      dots [default]
                                      [d]ocumentation group and example names
                                      [t]ap           TAP format
                                      [j]unit         JUnit XML (time attributre with --profile)
                                      [f]ailures      file:line:message (suitable for editors integration)
                                      [null]          do not display anything
                                      [debug]         for developers
                                      Custom formatter name (which load from $SHELLSPEC_LOAD_PATH)
    -o, --output FORMATTER          Choose a generator(s) to generate a report file(s) [default: none]
                                      You can use the same name as FORMATTER. (multiple options allowed)
        --{no-}color                Enable or disable color [default: enabled if the output is a TTY]
                                      Disable if NO_COLOR environment variable set
        --skip-message VERBOSITY    Mute skip message | <[verbose]> [moderate] [quiet]
                                      [verbose]       do not mute any messages [default]
                                      [moderate]      mute repeated messages
                                      [quiet]         mute repeated or non-temporary messages
        --pending-message VERBOSITY Mute pending message | <[verbose]> [quiet]
                                      [verbose]       do not mute any messages [default]
                                      [quiet]         mute non-temporary messages
        --quiet                     Equivalent of --skip-message quiet --pending-message quiet
        --(show|hide)-deprecations  Show or hide deprecations details [default: show]

  **** Ranges / Filters / Focus ****

    You can run selected examples by specified the line numbers or ids

      shellspec path/to/a_spec.sh:10   # Run the groups or examples that includes lines 10
      shellspec path/to/a_spec.sh:@1-5 # Run the 5th groups/examples defined in the 1st group
      shellspec a_spec.sh:10:@1:20:@2  # You can mixing multiple line numbers and ids with join by ":"

    -F, --focus                     Run focused groups / examples only
    -P, --pattern PATTERN           Load files matching pattern [default: "*_spec.sh"]
    -E, --example PATTERN           Run examples whose names include PATTERN
    -T, --tag TAG[:VALUE]           Run examples with the specified TAG
        --default-path PATH         Set the default path where looks for examples [default: "spec"]
                                     The path to a specfile or a directory containing specfiles

    You can specify the path recursively by prefixing it with the pattern "*/" or "**/"
      (This is not glob patterns and requires quotes. It is also available with --default-path)

      shellspec "*/spec"               # The pattern "*/" matches 1 directory
      shellspec "**/spec"              # The pattern "**/" matches 0 and more directories
      shellspec "*/*/**/test_spec.sh"  # These patterns can be specified multiple times

    -L, --dereference               Dereference all symlinks in in the above pattern [default: disabled]

  **** Coverage ****

        --covdir DIRECTORY          Output directory of the Coverage Report [default: coverage]
        --{no-}kcov                 Enable coverage using kcov [default: disabled]
        --kcov-path PATH            Specify kcov path [default: kcov]
        --kcov-options OPTIONS      Additional Kcov options (coverage limits, coveralls id, etc)
                                      Default specified options: (can be overwritten)
                                        --include-path=.
                                        --include-pattern=.sh
                                        --exclude-pattern=/.shellspec,/spec/,/coverage/,/report/
                                        --path-strip-level=1
                                      To include files without extension, specify --include-pattern
                                      without ".sh" and filter with --include-*/--exclude-* options.

  **** Utility ****

        --init [TEMPLATE...]        Initialize your project with ShellSpec | [git] [hg] [svn]
                                      Template: Create additional files.
                                        [git]   .gitignore
                                        [hg]    .hgignore
                                        [svn]   .svnignore
        --gen-bin [@COMMAND...]     Generate test support commands in "<HELPERDIR>/support/bin"
                                      This is useful for run actual commands from mock/stub.
        --count                     Count the number of specfiles and examples
        --list LIST                 List the specfiles/examples | [specfiles] [examples(:id|:lineno)]
                                      [specfiles]       list the specfiles
                                      [examples]        list the examples with id
                                      [examples:id]     alias for examples
                                      [examples:lineno] list the examples with lineno
                                      [debug]           for developer
                                      The order is randomized with --random but random TYPE is ignored.
        --syntax-check              Syntax check of the specfiles without running any examples
        --translate                 Output translated specfile
        --task [TASK]               Run the TASK or Show the task list if TASK is not specified
        --docker DOCKER-IMAGE       Run tests in specified docker image (EXPERIMENTAL)
                                      This is an experimental feature and may be changed/removed in the future.
    -v, --version                   Display the version
    -h, --help                      -h: short help, --help: long help
GETOPTIONSHERE
}
# Generated by getoptions (END)