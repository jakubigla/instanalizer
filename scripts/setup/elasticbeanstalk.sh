#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/../.." && pwd )"
echo "Setting up Elastic Beanstalk..."
cp "$ROOT_DIR/.elasticbeanstalk/config.cfg.yml" "$ROOT_DIR/.elasticbeanstalk/config.yml"