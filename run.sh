#!/bin/sh

set -e

mkdir $MNT_POINT

echo "$AWS_KEY:$AWS_SECRET_KEY" > passwd && chmod 600 passwd
s3fs $S3_BUCKET $MNT_POINT -o passwd_file=passwd -o use_path_request_style -o endpoint=hu2-k3s -o url=$S3_URL

/bin/bash

