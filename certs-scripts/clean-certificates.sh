#! /usr/bin/env bash

CERTS_DIR=`dirname $BASH_SOURCE`/../certs

rm $CERTS_DIR/*.csr
rm $CERTS_DIR/*.pem
