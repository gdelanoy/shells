#!/usr/bin/env bash
HELP="Usage: $0 [-n LINES] [-p PREFIX] [-w] [-h]

Continuously displays the last '-n' lines of 'stdin'.

Parameters:
  -n         Number of lines to display (default: 5).
  -p PREFIX  Prefix lines with 'PREFIX'.
  -w         Preserve blank lines (default: false).
  -h         Display this help
";

function real_len() {
  # Measure the length of a string, stripped of control characters.
  local trimmed;
  trimmed=$(echo "$@" | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g")
  echo ${#trimmed};
}

# Process options
while getopts 'hn:p:o:w' name; do
  case "$name" in
    o) out="$OPTARG";
       if ! touch "$out"; then
        echo "Failed to create output file.";
        exit 2;
       fi;;
    p) prefix="$(tput sgr0)$OPTARG";;
    n) lines="$OPTARG";
       [ -n "$lines" ] && [ "$lines" -eq "$lines" ] 2>/dev/null;
       if [ $? -ne 0 ] || [ "$lines" -lt 1 ]; then
          echo "-n LINES must be a number greater than 0";
          exit 2;
       fi;;
    w) whitespace=false;;
    h|*) echo "$HELP";
         exit 2;;
  esac
done

# Check for unexpected options
shift "$((OPTIND - 1))";
if [ -n "$*" ]; then
  echo "Unexpected options: $*";
  echo "$HELP";
  exit 2;
fi

lines="${lines:-5}"
out="${out:-/dev/null}"
whitespace="${whitespace:-true}"

width="$(stty size </dev/tty | cut -d' ' -f2)"
(( width-=$(real_len "$prefix") ))

i=0
while IFS= read -r line; do
  if $whitespace; then
    case "$line" in
      (*[![:blank:]]*);;
      (*) continue;;
    esac
  fi
  if [[ $((++i)) -gt "$lines" ]]; then
    tput cuu "$lines"; tput dl1;
    if [[ "$lines" -gt 1 ]]; then tput cud "$(( lines - 1 ))"; fi;
  fi
  echo -n "$prefix";
  echo "$line" | cut -c1-$width;
done < <(tee "$out" </dev/stdin)
