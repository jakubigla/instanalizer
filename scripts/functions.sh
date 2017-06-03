#!/usr/bin/env bash

function getCurrentEnvName {
    eb list | grep "*" | tr -s ' ' | cut -d ' ' -f 2
}

function getEBResourceOutput {
    OUTPUT_KEY="$1"
    ENV_DEF=`getCurrentEnvName`
    ENVIRONMENT_NAME=${2:-$ENV_DEF}

    echo $ENVIRONMENT_NAME
    echo $ENV_DEF

}
