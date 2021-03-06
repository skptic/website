#!/bin/bash

AWS_ACCESS_KEY_ID=$NXF_AWS_ACCESS
AWS_SECRET_ACCESS_KEY=$NXF_AWS_SECRET
 
aws s3 sync output/ s3://www.nextflow.io \
 --storage-class REDUCED_REDUNDANCY \
 --acl public-read \
 --exclude "$0" \
 "$@"
