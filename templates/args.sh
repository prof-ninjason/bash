i#!/bin/bash

echo "argc: $#"
echo "argv: $@"

i=1
for arg in $@; do
  echo "\$$i: $arg"
  ((i++)) 
done

if [ $# -lt 2 ]; then
  echo "Usage: `which $0` [foo bar baz]"
  exit 0
fi

if [ $3 ]; then
  echo "\$3 is true"
else
  echo "\$3 is false"
fi

