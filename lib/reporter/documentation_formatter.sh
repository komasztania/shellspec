#shellcheck shell=sh disable=SC2004

: "${example_index:-} ${field_tag:-} ${field_type:-} ${field_note:-}"
: "${field_desc:-} ${field_color:-} ${field_message:-}"

documentation_formatter() {
  formatter_begin() {
    methods
    conclusion_begin
    references_begin
    _indent='' _nest=0 _pos=0 _flushed=''
  }

  formatter_format() {
    conclusion_format "$@"
    references_format "$@"

    case $field_tag in
      log) putsn "${_indent}${field_color}${field_message}${RESET}" ;;
      specfile) _indent='' _nest=0 _pos=0 _flushed='';;
      example_group)
        case $field_type in
          begin)
            _desc="${_indent}${field_color}${field_desc}${RESET}"
            eval "_descs_$_nest=\$_desc"
            _indent="$_indent  " _nest=$(($_nest + 1)) _flushed=''
            ;;
          end)
            _indent="${_indent%  }" _nest=$(($_nest - 1))
            [ "$_flushed" ] && _pos=$(($_pos - 1))
            eval "_descs_$_nest=''"
            ;;
        esac
        ;;
      *)
        [ "$field_type" = "result" ] || return 0
        [ "$_pos" -eq 0 ] && putsn
        while [ $_pos -lt $_nest ]; do
          eval "_desc=\$_descs_$_pos"
          putsn "$_desc"
          _pos=$(($_pos + 1))
        done
        _flushed=1

        set -- "${_indent}${field_color}${field_desc}"
        [ "$example_index" ] && set -- "$@" "(${field_note:-} - $example_index)"
        putsn "$*${RESET}"
    esac
  }

  formatter_end() {
    putsn
    conclusion_end
    finished
    summary
    references_end
  }
}