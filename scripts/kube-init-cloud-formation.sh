#! /usr/bin/env bash

KUBE_AWS_PATH=`dirname $BASH_SOURCE`/kube-aws-darwin-amd64/darwin-amd64/kube-aws

$KUBE_AWS_PATH init \
    --cluster-name=dac-cluster \
    --external-dns-name=dac-cluster \
    --region=eu-west-1 \
    --availability-zone=eu-west-1a \
    --key-name=key-pair-name \
    --kms-key-arn="arn:aws:kms:eu-west-1:673811240441:key/b6a0a7d4-f6c5-40ca-b545-3e2561efd238"
