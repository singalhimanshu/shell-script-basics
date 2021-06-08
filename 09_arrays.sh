#!/bin/bash
# arrays: Basics of arrays in bash.

even_nums=(1 4 6 8)

echo ${even_nums[0]}
echo
# curly brackets are significant.
# echo $even_nums[0]

# while assigning we don't need `${}`
even_nums[0]=2

# negative indexing
echo ${even_nums[-1]}
echo

# this will only print the first element of array
echo "echo print even_num : ${even_nums}"

# print all elements (space separated)
echo "Print all elements (space separated): ${even_nums[@]}"
echo

# get size of array
echo "Size of array: ${#even_nums[@]}"
echo

# looping through array
for num in ${even_nums[@]} ; do
    echo ${num}
done
echo

# print array indices
# ! -> returns a list of array indices
echo "Indices: ${!even_nums[@]}"
echo

# looping on arrays indices
for i in ${!even_nums[@]} ; do
    echo "Index: $i, Value: ${even_nums[$i]}"
done
echo

# appending to arrays
even_nums+=( 10 )
echo ${even_nums[@]}
echo

# get files/directories as an array
ls_arr=( $(ls) )
echo ${ls_arr[@]}
echo

# slicing
echo ${even_nums[@]:0:2}
