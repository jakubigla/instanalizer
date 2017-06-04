#!/usr/bin/env bash

SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && dirname `pwd` )"
source "$SCRIPTS_DIR/functions.sh"

APPLICATION_NAME="$1"
ENVIRONMENT_NAME="$2"

ENV_EXISTS=`aws elasticbeanstalk describe-environments \
    --application-name "$APPLICATION_NAME" \
    --environment-names "$ENVIRONMENT_NAME" \
    | jq '.Environments | length'`

if [ "$ENV_EXISTS" -eq 0 ]; then
    eb create "$ENVIRONMENT_NAME"
else
    eb deploy "$ENVIRONMENT_NAME"
fi