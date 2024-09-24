#!/bin/bash

PROXY=$1

rm -f test.log

echo ### Test 1: Get regular package > test.log

curl $PROXY/lodash >> test.log
curl $PROXY/lodash/4.17.21 >> test.log
curl $PROXY/lodash/-/lodash-4.17.21.tgz >> test.log

echo ### Test 2: Get scoped package >> test.log

curl $PROXY/@types/lodash >> test.log
curl $PROXY/@types/lodash/4.17.9 >> test.log
curl $PROXY/@types/lodash/-/lodash-4.17.9.tgz >> test.log

echo ### Test 3: Get scoped package escaped "slash" >> test.log

curl $PROXY/@types%2Flodash >> test.log
curl $PROXY/@types%2Flodash/4.17.9 >> test.log
curl $PROXY/@types%2Flodash/-/lodash-4.17.9.tgz >> test.log

echo ### Test 4: Get scoped package escaped "at" >> test.log

curl $PROXY/%40types/lodash >> test.log
curl $PROXY/%40types/lodash/4.17.9 >> test.log
curl $PROXY/%40types/lodash/-/lodash-4.17.9.tgz >> test.log

echo ### Test 5: Get scoped package escaped "at" and "slash" >> test.log

curl $PROXY/%40types%2Flodash >> test.log
curl $PROXY/%40types%2Flodash/4.17.9 >> test.log
curl $PROXY/%40types%2Flodash/-/lodash-4.17.9.tgz >> test.log
