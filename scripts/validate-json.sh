#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

if ! command -v check-jsonschema >/dev/null 2>&1; then
  printf 'check-jsonschema is required. Install it with:\n'
  printf '  python3 -m pip install check-jsonschema\n'
  printf '  # or: uv tool install check-jsonschema\n'
  exit 127
fi

check-jsonschema --schemafile "$ROOT_DIR/schemas/gno-native.schema.json" "$ROOT_DIR"/gno-native/*.json
check-jsonschema --schemafile "$ROOT_DIR/schemas/grc20.schema.json" "$ROOT_DIR"/grc20/*.json
check-jsonschema --schemafile "$ROOT_DIR/schemas/ibc-native.schema.json" "$ROOT_DIR"/ibc-native/*.json
check-jsonschema --schemafile "$ROOT_DIR/schemas/ibc-tokens.schema.json" "$ROOT_DIR"/ibc-tokens/*.json

printf 'All JSON files match their schemas.\n'
