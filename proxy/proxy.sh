#!/bin/bash

PROXY=$1
VERSION=$2
DEBUG=$3

rm -f proxy.log
rm -f debug.log

# Boot the server in a background process
# nohup npx verdaccio@latest --config ./config.yml --listen $TEST_CASE_PROXY &
# nohup env DEBUG="express:*,verdaccio:storage*,verdaccio:proxy*,verdaccio:plugin:local-storage*,verdaccio:api*" npx verdaccio@next-7 --config ./config.yml --listen $TEST_CASE_PROXY >debug.log 2>error.log &
nohup env DEBUG=$DEBUG npx verdaccio@$VERSION --config ./config.yml --listen $PROXY 2> debug.log &

# Wait for the server to begin listening for connections
( tail -F -n10 proxy.log & ) | fgrep -q $PROXY

cat proxy.log
