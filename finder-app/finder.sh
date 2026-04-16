#!/bin/sh

filesdir=$1
searchstr=$2

if [ "$#" -lt 2 ]; then
    echo "ERROR: Not all arguments provided. Usage: ./finder.sh <filesdir> <searchstr>"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "ERROR: $filesdir is not a directory."
    exit 1
fi

echo "The number of files are $(find "$filesdir" -type f | wc -l) and the number of matching lines are $(grep -r "$searchstr" "$filesdir" | wc -l)"
