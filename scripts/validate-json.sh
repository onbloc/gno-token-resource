#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

if ! command -v check-jsonschema >/dev/null 2>&1; then
  printf 'check-jsonschema is required. Install it with:\n'
  printf '  python3 -m pip install check-jsonschema\n'
  printf '  # or: uv tool install check-jsonschema\n'
  exit 127
fi

if ! command -v jq >/dev/null 2>&1; then
  printf 'jq is required for the cross-field checks. Install it with:\n'
  printf '  # macOS: brew install jq\n'
  printf '  # Debian/Ubuntu: apt-get install jq\n'
  exit 127
fi

check-jsonschema --schemafile "$ROOT_DIR/schemas/gno-native.schema.json" "$ROOT_DIR"/gno-native/*.json
check-jsonschema --schemafile "$ROOT_DIR/schemas/grc20.schema.json" "$ROOT_DIR"/grc20/*.json

# Rules below are cross-field invariants that JSON Schema cannot express.
failed=0

for file in "$ROOT_DIR"/grc20/*.json; do
  # token_path is the registry key and must always be "<pkg_path>.<symbol>".
  violations="$(jq -r '
    .[]
    | select(.token_path != (.pkg_path + "." + .symbol))
    | "  token_path \"\(.token_path)\" should be \"\(.pkg_path).\(.symbol)\""
  ' "$file")"

  if [ -n "$violations" ]; then
    printf '%s: token_path must equal pkg_path + "." + symbol\n%s\n' "${file#"$ROOT_DIR/"}" "$violations"
    failed=1
  fi

  # A placeholder may not be substituted twice inside the same argument list.
  duplicates="$(jq -r '
    .[]
    | .token_path as $token
    | (.routes.funcs // {})
    | to_entries[]
    | . as $entry
    | ($entry.value.args | map(select(startswith("$") and (startswith("$$") | not)))) as $placeholders
    | select(($placeholders | length) != ($placeholders | unique | length))
    | "  \($token) routes.funcs.\($entry.key) repeats a placeholder: \($placeholders | join(", "))"
  ' "$file")"

  if [ -n "$duplicates" ]; then
    printf '%s: each placeholder may appear at most once per args list\n%s\n' "${file#"$ROOT_DIR/"}" "$duplicates"
    failed=1
  fi
done

if [ "$failed" -ne 0 ]; then
  exit 1
fi

printf 'All JSON files match their schemas.\n'
