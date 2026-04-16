#!/bin/sh

writefile=$1
writestr=$2

if [ "$#" -lt 2 ]; then
    echo "ERROR: Not all arguments provided. Usage: ./writer.sh <writefile> <writestr>"
    exit 1
fi

mkdir -p $(dirname $writefile) && touch $writefile
if [ $? -ne 0 ]; then
    echo "ERROR: Could not create file $writefile"
fi

echo $writestr > $writefile
