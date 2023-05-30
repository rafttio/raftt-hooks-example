#!/usr/bin/env sh

set -e

cd /code/tf
terraform destroy -auto-approve -var="object_key=$RAFTT_ENV_ID"
