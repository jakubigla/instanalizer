#!/usr/bin/env sh

apk add --update curl && rm -rf /var/cache/apk/*
curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` \
    > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose