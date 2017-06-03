#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd )"

echo "Installing npm dependencies..."
cd "$ROOT_DIR/ui" && npm install