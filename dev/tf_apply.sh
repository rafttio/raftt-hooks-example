#!/usr/bin/env sh

set -e

cd /code/tf
terraform init
terraform apply -auto-approve -var="object_key=$RAFTT_ENV_ID"

mkdir output
terraform output -json > output/tf-out.json
