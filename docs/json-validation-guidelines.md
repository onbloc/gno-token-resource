# JSON validation guidelines

This repository now validates token resource JSON files with JSON Schema.

## Covered directories

- `gno-native/*.json` → `schemas/gno-native.schema.json`
- `grc20/*.json` → `schemas/grc20.schema.json`
- `ibc-native/*.json` → `schemas/ibc-native.schema.json`
- `ibc-tokens/*.json` → `schemas/ibc-tokens.schema.json`

## What is enforced

- Each file must be a JSON array.
- Each token entry must use the expected object shape for its directory.
- Unknown fields are rejected.
- `decimals` must be a non-negative integer.
- URL fields accept either a valid URI or an empty string.
- Image paths must point to the matching directory and use `.svg`.
- `ibc-tokens.origin_type` is limited to `staking`, `native`, `pool`, `ibc`, `bridge`, `cw20`, or `erc20`.

## What is intentionally not enforced yet

The first version focuses on structure and required fields without breaking the current dataset.

- The filename does not need to match every entry's `chain_id`.
- Cross-file uniqueness is not checked.
- Description length is not capped in schema yet.

Those rules can be added later after the existing data is normalized.

## Run validation locally

```shell
python3 -m pip install check-jsonschema
./scripts/validate-json.sh
```

If your Python is externally managed, install the CLI with `uv tool install check-jsonschema` instead.

## Updating schemas

When you add a new required field or change a JSON shape:

1. Update the matching schema in `schemas/`.
2. Update the contributor guidance in `README.md`.
3. Run `./scripts/validate-json.sh` locally.
4. Confirm the GitHub Action passes in your pull request.
