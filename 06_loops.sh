#!/bin/bash
# loops: Basics of loops in bash.

# basic structure
# for item in ${items} ; do
#   task ${item}
# done


# simple for loop example
for i in {1..9} ; do
    echo ${i}
done

echo


# loop on all command line args
for arg in ${@} ; do
    echo ${arg}
done

echo

for arg ; do
    echo ${arg}
done

echo


# read a file word by word
echo "Read file word by word:"
for word in $(cat ./01_script.sh) ; do
    echo ${word}
done

echo


# simple while loop example
counter=1
while [[ ${counter} -lt 10 ]] ; do
    echo ${counter}
    ((counter++))
    # ((counter += 1))
    # let counter++
    # let counter+=1
done

echo


# read-while loop
# read a file line by line (cat like program)
echo
echo "read a file line by line:"
while read line ; do
    echo ${line}
done < ./01_script.sh

echo

# infinite while loop
while true ; do
    echo "Ctrl-c to stop"
    sleep 1
done
