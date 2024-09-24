#!/bin/bash

PROXY=$1

echo ### Test 1: Get regular package

URL=$PROXY/lodash
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/lodash/4.17.21 
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/lodash/-/lodash-4.17.21.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL

echo ### Test 2: Get scoped package

URL=$PROXY/@types/lodash
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/@types/lodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/@types/lodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL

echo ### Test 3: Get scoped package escaped "slash"

URL=$PROXY/@types%2Flodash
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/@types%2Flodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/@types%2Flodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL

echo ### Test 4: Get scoped package escaped "at"

URL=$PROXY/%40types/lodash
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/%40types%/lodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/%40types/lodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL

echo ### Test 5: Get scoped package escaped "at" and "slash"

URL=$PROXY/%40types%2Flodash
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/%40types%2Flodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
URL=$PROXY/%40types%2Flodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}" $URL
