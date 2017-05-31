#!/usr/bin/env bash

function getCurrentEnvName {
    eb list | grep "*" | tr -s ' ' | cut -d ' ' -f 2
}

function getEBResourceOutput {
    OUTPUT_KEY="$1"
    ENVIRONMENT_NAME=`getCurrentEnvName`

    ENVIRONMENT_ID=`aws elasticbeanstalk describe-environments --environment-name "$ENVIRONMENT_NAME" \
        | jq -r '.Environments[0].EnvironmentId'`

    CLOUD_FORMATION_STACK_NAME="awseb-${ENVIRONMENT_ID}-stack"

    aws cloudformation describe-stacks --stack-name "$CLOUD_FORMATION_STACK_NAME" \
        | jq -r --arg OUTPUT_KEY "$OUTPUT_KEY" \
            '.Stacks[0].Outputs[] | select(.OutputKey==$OUTPUT_KEY) | .OutputValue' 2> /dev/null
}
