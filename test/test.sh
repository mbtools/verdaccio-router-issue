#!/bin/bash

PROXY=$1

echo "### Test 1: Get regular package"

npm cache clean
rm -fR ../proxy/storage/data

URL=$PROXY/lodash
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/lodash/4.17.21 
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/lodash/-/lodash-4.17.21.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
tree ../proxy/storage

echo "### Test 2: Get scoped package"

npm cache clean
rm -fR ../proxy/storage/data

URL=$PROXY/@types/lodash
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/@types/lodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/@types/lodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
tree ../proxy/storage

echo "### Test 3: Get scoped package escaped 'slash'"

npm cache clean
rm -fR ../proxy/storage/data

URL=$PROXY/@types%2Flodash
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/@types%2Flodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/@types%2Flodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
tree ../proxy/storage

echo "### Test 4: Get scoped package escaped 'at'"

npm cache clean
rm -fR ../proxy/storage/data

URL=$PROXY/%40types/lodash
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/%40types/lodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/%40types/lodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
tree ../proxy/storage

echo "### Test 5: Get scoped package escaped 'at' and 'slash'"

npm cache clean
rm -fR ../proxy/storage/data

URL=$PROXY/%40types%2Flodash
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/%40types%2Flodash/4.17.9
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
URL=$PROXY/%40types%2Flodash/-/lodash-4.17.9.tgz
echo $URL
curl -s -o /dev/null -w "%{http_code} %{http_msg}" $URL
echo
tree ../proxy/storage
