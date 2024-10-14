#!/bin/bash
set -e

PRIVATE_KEY_PATH="$1"

if [[ -z "$PRIVATE_KEY_PATH" ]]; then
  echo "(!) To use passwords, you must import gpg private key first: gpg --import /path/to/your-sub-private-key.asc"
else
  gpg --import "$PRIVATE_KEY_PATH"
fi

cat "$(dirname $0)/README.md"
