#!/bin/bash
# variable_tricks: Some useful tips and tricks regarding variables.

name="barr"


# substitute
echo "Substitute 'r' with 'z':" 
echo ${name/r/z}
echo


# slicing
echo "Slice ${name} 0:2"
echo ${name:0:2}
echo 

echo "Slice ${name} :2"
echo ${name::2}
echo

# Note: we cannot remove the end of the range
echo "Slice ${name} :0:"
echo ${name:0:}
echo

# negative slicing
echo "Slice ${name} ::-1"
echo ${name::-1}
echo

# string length
echo "Size of ${name} :"
echo ${#name}
echo

# Indirection
bar="baz"
echo "Indirection: "
echo ${!name} # name -> bar -> baz
# ${bar}
echo


# Case Modification
bar_lower="bar"
bar_first_capital=${bar_lower^}
echo "First letter capital:"
echo ${bar_first_capital}
echo

bar_first_lower=${bar_first_capital,}
echo "First letter lower:"
echo ${bar_first_lower}
echo

bar_all_capital=${bar_lower^^}
echo "All letters capital:"
echo ${bar_all_capital}
echo

bar_all_lower=${bar_all_capital,,}
echo "All letters lower:"
echo ${bar_all_lower}
echo

# toggle case of first letter
echo "Toggle case of first letter:"
echo ${bar_all_lower~}  # Bar
echo

# toggle case of all letters
echo "Toggle case of all letter:"
echo ${bar_all_lower~~}
echo


# Note: There are a lot more parameter expansion symbols.
# Here are some of the most commonly used one's.

filename="main.cpp"

# remove file extension
echo "Remove file extension:"
echo ${filename%.*}
echo

# get file extension
echo "Get file extension:"
echo ${filename##*.}
echo

# get directory name
file_path="/path/to/file.txt"
echo "Get directory name:"
echo ${file_path%/*}
echo

# get file name
echo "Get file name:"
echo ${file_path##*/}
echo
