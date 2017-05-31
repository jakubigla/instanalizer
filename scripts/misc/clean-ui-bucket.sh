#!/usr/bin/env bash

SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && dirname `pwd` )"
source "$SCRIPTS_DIR/functions.sh"

echo "Getting UI bucket name..."
BUCKET_NAME=`getEBResourceOutput WebsiteBucketName`

aws s3 rm "s3://$BUCKET_NAME" --recursive