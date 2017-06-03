#!/usr/bin/env bash

SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && dirname `pwd` )"
source "$SCRIPTS_DIR/functions.sh"

APPLICATION_NAME="$1"
ENVIRONMENT_NAME="$2"

aws elasticbeanstalk describe-environments --application-name "$APPLICATION_NAME"

