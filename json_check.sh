#!/bin/bash

echo "Testing json syntax..."

find . -name *.json -exec node_modules/.bin/jsonlint '{}' \;

echo "Ruby syntax test complete"
