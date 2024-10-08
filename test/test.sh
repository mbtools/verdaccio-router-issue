#!/bin/bash

PROXY=$1
STORE=$2

echo "### Test 1: Get regular package"
echo

rm -fR $STORE

URL=$PROXY/lodash
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/lodash/4.17.21 
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/lodash/-/lodash-4.17.21.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
echo
tree $STORE
echo

echo "### Test 2: Get scoped package"
echo

rm -fR $STORE

URL=$PROXY/@types/lodash
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/@types/lodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/@types/lodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
echo
tree $STORE
echo

echo "### Test 3: Get scoped package escaped 'slash'"
echo

rm -fR $STORE

URL=$PROXY/@types%2Flodash
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/@types%2Flodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/@types%2Flodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
echo
tree $STORE
echo

echo "### Test 4: Get scoped package escaped 'at'"
echo

rm -fR $STORE

URL=$PROXY/%40types/lodash
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/%40types/lodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/%40types/lodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
echo
tree $STORE
echo

echo "### Test 5: Get scoped package escaped 'at' and 'slash'"
echo

rm -fR $STORE

URL=$PROXY/%40types%2Flodash
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/%40types%2Flodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
URL=$PROXY/%40types%2Flodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code}: size %{size_download} bytes" $URL
echo
echo
tree $STORE
echo
