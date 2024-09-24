#!/bin/bash

PROXY=$1

rm -f test.log

echo ### Test 1: Get regular package > test.log

$URL=$PROXY/lodash
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/lodash/4.17.21 
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/lodash/-/lodash-4.17.21.tgz
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log

echo ### Test 2: Get scoped package >> test.log

$URL=$PROXY/@types/lodash
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/@types/lodash/4.17.9
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/@types/lodash/-/lodash-4.17.9.tgz
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log

echo ### Test 3: Get scoped package escaped "slash" >> test.log

$URL=$PROXY/@types%2Flodash
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/@types%2Flodash/4.17.9
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/@types%2Flodash/-/lodash-4.17.9.tgz
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log

echo ### Test 4: Get scoped package escaped "at" >> test.log

$URL=$PROXY/%40types/lodash
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/%40types%/lodash/4.17.9
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/%40types/lodash/-/lodash-4.17.9.tgz
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log

echo ### Test 5: Get scoped package escaped "at" and "slash" >> test.log

$URL=$PROXY/%40types%2Flodash
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/%40types%2Flodash/4.17.9
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
$URL=$PROXY/%40types%2Flodash/-/lodash-4.17.9.tgz
echo $URL >> test.log
curl -s -o /dev/null -w "%{http_code}" $URL >> test.log
