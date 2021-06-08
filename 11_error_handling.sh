#!/bin/bash
# error_handling: Making bash shell-scripts more robust.

dir="tmp"
file="test"

# set -x

# Bad script
cd ${dir}
rm ${file}

# set +x

# Solution: Check the exit status
# cd ${dir}

# Decent way
# `#?` contains exit status of previous command
# if [[ ${?} -eq 0 ]] ; then
#     rm ${file}
# else
#     echo "Directory doesn't exist"
#     exit 1
# fi

# Better way
# if cd ${dir} ; then
#     rm ${file}
# else
#     echo "Directory doesn't exist"
#     exit 1
# fi

# Simplest way
# cd ${dir} && rm ${file}
