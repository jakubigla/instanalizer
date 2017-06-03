#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd )"
SERVICES=("api-gateway" "authentication")

echo "Installing PHP dependencies..."
for SERVICE in "${SERVICES[@]}"; do
    cd "$ROOT_DIR/services/$SERVICE" && composer install
done
