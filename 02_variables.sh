#!/bin/bash
# variables: Basics of variables in bash

good="Good"
# Note: There should be no space in between variable name and value.

# Prints "good"
echo good

# Prints data of variable `goodmorning` (not recommended)
echo $goodmorning

# Prints data of variable `good` and then the string morning
echo ${good}morning

# Note: It is a good practice to use name the variables in lowercase.
# Since there are some system-variables which are in UPPERCASE. 
# Example: PATH, TERM and many more.
