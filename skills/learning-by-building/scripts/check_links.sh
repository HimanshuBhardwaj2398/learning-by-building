#!/usr/bin/env bash
# Check every link in the skill's resources.md, or in the markdown file given
# as the first argument.
#
# Prints one line per link that needs attention, then a summary line.
# Exit status: 0 if every link answered 200 at its own address, 1 if any link
# needs attention, 2 if the script could not run.
#
# Needs bash, curl, grep, sort and xargs, all present on macOS and Linux.

set -u

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
file="${1:-$here/../resources.md}"

if [ ! -f "$file" ]; then
  echo "No such file: $file" >&2
  echo "Usage: $(basename "$0") [markdown-file]" >&2
  exit 2
fi
if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required and was not found on PATH." >&2
  exit 2
fi

# Several sites refuse curl's default user agent, so present a browser's.
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"
# The slowest sites in the list answer in about 10 seconds. 30 leaves room for
# a slow connection without letting one dead host stall the run.
TIMEOUT=30
# 8 at a time finishes about 150 links in under a minute, and the links are
# spread over enough sites that no single one sees more than a couple at once.
PARALLEL=8

check() {
  url="$1"
  meta=$(curl -sL -m "$TIMEOUT" -A "$UA" -o /dev/null -w '%{http_code} %{url_effective}' "$url" 2>/dev/null)
  code="${meta%% *}"
  final="${meta#* }"
  case "$code" in
    200)
      if [ "$final" != "$url" ]; then
        echo "MOVED    $url -> $final (update the link)"
      else
        echo "OK       $url"
      fi ;;
    403|429)
      echo "BLOCKED  $url (HTTP $code: the site refused an automated request, so open it by hand)" ;;
    000|"")
      echo "NO REPLY $url (nothing within ${TIMEOUT}s; run again before treating it as dead)" ;;
    *)
      echo "BROKEN   $url (HTTP $code)" ;;
  esac
}
export -f check
export UA TIMEOUT

# Links sit inside markdown parentheses, so a URL ends at ")" or whitespace.
results=$(LC_ALL=C grep -o -E 'https?://[^) >]+' "$file" | sort -u \
  | xargs -P "$PARALLEL" -I{} bash -c 'check "$@"' _ {} | sort)

total=$(printf '%s\n' "$results" | grep -c .)
ok=$(printf '%s\n' "$results" | grep -c '^OK ')

if [ "$total" -eq 0 ]; then
  echo "No links found in $file." >&2
  exit 2
fi

printf '%s\n' "$results" | grep -v '^OK '
echo "Checked $total links in $file: $ok fine, $((total - ok)) need attention."
[ "$ok" -eq "$total" ]
