#!/bin/bash
# variables: basic of variables in bash

# Note: there should be no space in between
good="Good"

# Output: good
echo good

# Prints data of variable `goodmorning` (not recommended)
echo $goodmorning

# Prints data of variable `good` and then the string morning
echo ${good}morning

# Note: It is a good practice to use name the variables in lowercase.
# Since there are some system-variables which are in UPPERCASE. 
# Example: PATH, TERM and many more.
