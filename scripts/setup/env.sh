#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd )"
ENV_NAME="$1"

echo "Copying .env file..."
cp "$ROOT_DIR/env/$ENV_NAME" "$ROOT_DIR/.env"