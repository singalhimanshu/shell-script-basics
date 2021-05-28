#!/bin/bash
name="bar"


# substitute
echo ${name/r/z}


# slicing
echo ${name:0:2}
echo ${name::2}

# Note: we cannot remove the end of the range
echo ${name:0:}

# negative slicing
echo ${name::-1}
echo ${name::-2}

# string length
echo ${#name}

# Indirection
bar="baz"
echo ${!name} # name -> bar -> baz


# Case Modification
bar_lower="bar"
bar_first_capital=${bar_lower^}
echo ${bar_first_capital}

bar_first_lower=${bar_first_capital,}
echo ${bar_first_lower}

bar_all_capital=${bar_lower^^}
echo ${bar_all_capital}

bar_all_lower=${bar_all_capital,,}
echo ${bar_all_lower}

# toggle case of first letter
echo ${bar_all_lower~} 
# toggle case of all letters
echo ${bar_all_lower~~}


# Note: There are a lot more parameter expansion symbols.
# Here are some of the most commonly used one's.

filename="main.cpp"

# remove file extension
echo ${filename%.*}

# get file extension
echo ${filename##*.}

# get directory name
file_path="/path/to/file.txt"
echo ${file_path%/*}

# get file name
echo ${file_path##*/}
