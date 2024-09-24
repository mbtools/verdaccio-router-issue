#!/bin/bash

PROXY=$1

rm -f test.log

curl -s -X GET $PROXY/lodash >> test.log
curl -s -X GET $PROXY/lodash/4.17.21 >> test.log
curl -s -X GET $PROXY/lodash/-/lodash-4.17.21.tgz >> test.log

curl -s -X GET $PROXY/@types/lodash >> test.log
curl -s -X GET $PROXY/@types/lodash/4.17.9 >> test.log
curl -s -X GET $PROXY/@types/lodash/-/lodash-4.17.9.tgz >> test.log

curl -s -X GET $PROXY/@types%2Flodash >> test.log
curl -s -X GET $PROXY/@types%2Flodash/4.17.9 >> test.log
curl -s -X GET $PROXY/@types%2Flodash/-/lodash-4.17.9.tgz >> test.log

curl -s -X GET $PROXY/%40types/lodash >> test.log
curl -s -X GET $PROXY/%40types/lodash/4.17.9 >> test.log
curl -s -X GET $PROXY/%40types/lodash/-/lodash-4.17.9.tgz >> test.log

curl -s -X GET $PROXY/%40types%2Flodash >> test.log
curl -s -X GET $PROXY/%40types%2Flodash/4.17.9 >> test.log
curl -s -X GET $PROXY/%40types%2Flodash/-/lodash-4.17.9.tgz >> test.log
