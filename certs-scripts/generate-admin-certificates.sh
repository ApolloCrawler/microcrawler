#! /usr/bin/env bash

CERTS_DIR=`dirname $BASH_SOURCE`/../certs

# printf "GENERATING ADMIN CERTIFICATES\n\n"

openssl genrsa -out $CERTS_DIR/admin-key.pem 2048
openssl req -new -key $CERTS_DIR/admin-key.pem -out $CERTS_DIR/admin.csr -subj "/CN=kube-admin"
openssl x509 -req -in $CERTS_DIR/admin.csr -CA $CERTS_DIR/ca.pem -CAkey $CERTS_DIR/ca-key.pem -CAcreateserial -out $CERTS_DIR/admin.pem -days 365
