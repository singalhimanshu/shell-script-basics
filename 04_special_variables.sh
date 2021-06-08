#!/bin/bash
# special_variables: Some special variables in bash.

# Positional arguments
# {0} - {9}

# 0 -> command
echo "Arg 0: ${0}"
echo "Arg 1: ${1}"
echo "Arg 2: ${2}"

# All arguments (starts from 1)
echo "All arguments: ${@}"

# similar variable to `@`
echo "All arguments: ${*}"
# the difference is we can specify a join operator for this command
IFS=","
echo "All arguments: ${*}"

# number of arguments (ignores the 0th arg)
echo "No. of arguments: ${#}"

# Note: There are a lot more special variables, the above mentioned are some of
# the most commonly used one's.
