#!/bin/bash

even_nums=(1 4 6 8)

echo ${even_nums[0]}
# curly brackets are significant
# echo $even_nums[0]

# while assigning we don't need `${}`
even_nums[0]=2

# negative indexing
echo ${even_nums[-1]}

# print all elements (space separated)
echo ${even_nums[@]}

# get size of array
echo "Size of array: ${#even_nums[@]}"

# looping through arrays
for num in ${even_nums[@]} ; do
    echo ${num}
done

# print array indices
# ! -> returns a list of array indices
echo "Indices: ${!even_nums[@]}"

# looping on arrays indices
for i in ${!even_nums[@]} ; do
    echo "Index: $i, Value: ${even_nums[$i]}"
done

# appending to arrays
even_nums+=( 10 )
echo ${even_nums[@]}

# get files/directories as an array
ls_arr=( $(ls) )
echo ${ls_arr[@]}

# Note: This will give the output as a string
# ls_arr=$(ls)

# slicing
echo ${even_nums[@]:0:2}
