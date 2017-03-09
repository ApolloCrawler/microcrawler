#! /usr/bin/env bash

VERSION=v0.9.5-rc.1

wget -O kube-aws-darwin-amd64.tar.gz https://github.com/coreos/kube-aws/releases/download/${VERSION}/kube-aws-darwin-amd64.tar.gz
tar xzf kube-aws-darwin-amd64.tar.gz

wget -O kube-aws-linux-amd64.tar.gz https://github.com/coreos/kube-aws/releases/download/${VERSION}/kube-aws-linux-amd64.tar.gz
tar xzf kube-aws-linux-amd64.tar.gz
