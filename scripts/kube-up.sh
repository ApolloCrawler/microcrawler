#! /usr/bin/env bash

KUBE_AWS_PATH=`dirname $BASH_SOURCE`/kube-aws-darwin-amd64/darwin-amd64/kube-aws

$KUBE_AWS_PATH up --s3-uri s3://korczis-dac/
