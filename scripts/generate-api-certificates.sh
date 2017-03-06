#! /usr/bin/env bash

CONFIG_DIR=`dirname $BASH_SOURCE`/../config
CERTS_DIR=`dirname $BASH_SOURCE`/../certs

# printf "GENERATING API CERTIFICATES\n\n"

openssl genrsa -out $CERTS_DIR/apiserver-key.pem 2048
openssl req -new -key $CERTS_DIR/apiserver-key.pem -out $CERTS_DIR/apiserver.csr -subj "/CN=kube-apiserver" -config $CONFIG_DIR/openssl.cnf
openssl x509 -req -in $CERTS_DIR/apiserver.csr -CA $CERTS_DIR/ca.pem -CAkey $CERTS_DIR/ca-key.pem -CAcreateserial -out $CERTS_DIR/apiserver.pem -days 365 -extensions v3_req -extfile $CONFIG_DIR/openssl.cnf
