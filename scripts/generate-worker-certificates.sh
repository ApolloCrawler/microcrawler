#! /usr/bin/env bash

CONFIG_DIR=`dirname $BASH_SOURCE`/../config
CERTS_DIR=`dirname $BASH_SOURCE`/../certs

# printf "GENERATING WORKER CERTIFICATES\n\n"

export WORKER_FQDN=crawler.korczis.com
export WORKER_IP=1.2.3.4

openssl genrsa -out $CERTS_DIR/${WORKER_FQDN}-worker-key.pem 2048
WORKER_IP=${WORKER_IP} openssl req -new -key $CERTS_DIR/${WORKER_FQDN}-worker-key.pem -out $CERTS_DIR/${WORKER_FQDN}-worker.csr -subj "/CN=${WORKER_FQDN}" -config $CONFIG_DIR/worker-openssl.cnf
WORKER_IP=${WORKER_IP} openssl x509 -req -in $CERTS_DIR/${WORKER_FQDN}-worker.csr -CA $CERTS_DIR/ca.pem -CAkey $CERTS_DIR/ca-key.pem -CAcreateserial -out $CERTS_DIR/${WORKER_FQDN}-worker.pem -days 365 -extensions v3_req -extfile $CONFIG_DIR/worker-openssl.cnf
