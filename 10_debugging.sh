#!/bin/bash
# debugging: Finding bugs in bash shell-script.

number=3

# start debugging/tracing
set -x

if [[ $number=2 ]] ; then
    echo "Number is 2"
else
    echo "Number is not 2"
fi

# stop debugging/tracing
set +x

echo "Hello"
