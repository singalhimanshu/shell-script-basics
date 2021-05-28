#!/bin/bash

# Basic structure
# function_name () {
#     statements
# }

# simple function example
hello () {
    echo "Hello"
}

# function with parameters
greeter () {
    greeting="${1}"
    echo "Hello ${greeting}"
    return greeting
}

hello
greeting_returned=$(greeter "Himanshu")
echo "Greeting returned: ${greeting_returned}"


# factorial of a number
factorial() {
    if [[ ${1} -le 1 ]] ; then
        echo 1
    else
        prev_factorial=$(factorial $((${1} - 1)))
        echo $(( ${1} * prev_factorial ))
    fi
}

factorial 5


# scope of variables
foo() {
    echo "Function parameters: ${@}"
    bar=10
    local baz=20
}

foo "one" "two"
echo "Bar: ${bar}"
echo "Baz: ${baz}"
