#! /usr/bin/env bash

SCRIPTS_DIR=`dirname $BASH_SOURCE`

bash $SCRIPTS_DIR/generate-cluster-certificates.sh

bash $SCRIPTS_DIR/generate-admin-certificates.sh

bash $SCRIPTS_DIR/generate-api-certificates.sh

bash $SCRIPTS_DIR/generate-worker-certificates.sh
