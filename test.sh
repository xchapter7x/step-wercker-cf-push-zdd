#!/bin/sh

sudo apt-get install -y golang


echo ""
echo "lets see if we can setup the environment, plugins and all"
echo ""
wget http://go-cli.s3-website-us-east-1.amazonaws.com/releases/v6.12.0/cf-linux-amd64.tgz
tar -zxvf cf-linux-amd64.tgz
CF=./cf
GOPATH=/tmp go get github.com/xchapter7x/autopilot
${CF} install-plugin /tmp/autopilot

