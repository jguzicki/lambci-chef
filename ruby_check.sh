#!/bin/bash

echo "Testing ruby syntax..."

find . -name *.rb --exec ruby -c '{}' \;

echo "Ruby syntax test complete"