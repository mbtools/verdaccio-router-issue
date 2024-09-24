#!/bin/bash

echo "###"
echo "### TESTS ###"
echo "###"

cat test.log

echo "###"
echo "### LOG ###"
echo "###"

cat proxy.log

echo "###"
echo "### DEBUG ###"
echo "###"

cat debug.log

echo "###"
echo "### ERRORS ###"
echo "###"

cat error.log

echo "###"
echo "### STORAGE ###"
echo "###"

# tree -s ./storage/ 
# ls -lR ./storage/
tree ./storage/ 

exit # <<<

# More detailed information about the packages

echo "###"
echo "### EXAMPLE @types/yargs-parser ###"
echo "###"

cat ./storage/@types/yargs-parser/package.json
echo

echo "###"
echo "### EXAMPLE yargs-parser ###"
echo "###"

cat ./storage/yargs-parser/package.json
echo
