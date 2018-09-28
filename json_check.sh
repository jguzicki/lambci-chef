#!/bin/bash

# echo "Testing json syntax..."

# find . -name *.json -exec node_modules/.bin/jsonlint '{}' \;

# echo "Ruby syntax test complete"

HAD_FAILURE=0

echo "Testing data_bags/ syntax..."

DB_FILES=`find json-files/ -name *.json`

for i in ${DB_FILES[@]}; do
  # echo $i
  node_modules/.bin/jsonlint $i >/dev/null 2>&1
  if [ $? -ne 0 ] ; then
    echo "$i FAILED TEST!"
    HAD_FAILURE=1
  fi
done

echo "JSON syntax test complete"

if [ $HAD_FAILURE -ne 0 ] ; then
  echo "1 or more json files FAILED"
  exit 1
else
  echo "All json files passed"
  exit 0
fi