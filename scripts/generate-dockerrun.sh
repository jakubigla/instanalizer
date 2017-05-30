#!/usr/bin/env bash

docker run --rm -v "$(pwd):/data/" micahhausler/container-transform docker-stack.yml \
    | jq -S '.AWSEBDockerrunVersion = 2' \
    > Dockerrun.aws.json