#! /usr/bin/env bash

CERTS_DIR=`dirname $BASH_SOURCE`/../certs

# printf "GENERATING CLUSTER CERTIFICATES\n\n"

openssl genrsa -out $CERTS_DIR/ca-key.pem 2048
openssl req -x509 -new -nodes -key $CERTS_DIR/ca-key.pem -days 10000 -out $CERTS_DIR/ca.pem -subj "/CN=kube-ca"
