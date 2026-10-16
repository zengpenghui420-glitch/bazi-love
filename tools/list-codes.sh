#!/usr/bin/env bash
# Check remaining uses: MANTLE_CREDS=... ./tools/list-codes.sh CODE1 CODE2 ...
set -euo pipefail; NS="${MANTLE_NS:-catquiz-zph420-codes}"; KEY="${MANTLE_KEY:-}"
[[ -z "$KEY" && -f "${MANTLE_CREDS:-}" ]] && KEY=$(python3 -c "import json,sys;print(json.load(open(sys.argv[1]))['key'])" "$MANTLE_CREDS")
for c in "$@"; do echo "$c $(curl -sS "https://mantledb.sh/v2/$NS/bz/$c" -H "X-Mantle-Key: $KEY")"; done
