#!/bin/bash
# if_else: Basics of if/else in bash.

# Basic structure:
# if TEST-COMMAND ; then
#     STATEMENTS
# fi

# if TEST-COMMAND 
# then
#     STATEMENTS
# fi

# -n means don't print trailing new line
# echo -n "Enter your age: "
# read age
#
# # -ge : greater than or equal
# if [[ $age -ge 18 ]] ; then
#     echo "You can vote."
# else
#     echo "You cannot vote."
# fi
# echo

# A complete list of primary expressions is given here -
# https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html


# @@@: continue from here
# file checker
filename=${1}
if [[ -f $filename ]] ; then
    echo "File $filename exists"
else
    echo "File $filename does not exist"
fi

echo


# check if today is Saturday
week_day=$(date +"%A")

if [[ $week_day = "Saturday" ]] ; then
    echo "Today is $week_day"
fi

echo

# root checker: check if current user is root or not
if [[ $(whoami) != 'root' ]] ; then
    echo "Not a root user"
else
    echo "Root user"
fi

