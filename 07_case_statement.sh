#!/bin/bash
# case_statements: Basics of case statements in bash.

# Basic structure:
# case EXPRESSION in
#     PATTERN_1)
#     STATEMENTS
#     ;; 
#
#     PATTERN_2)
#     STATEMENTS
#     ;; 
#
#     *)
#     STATEMENTS
#     ;; 
# esac

echo "Hello :)"
while : ; do
    read input
    case $input in
        hello)
            echo "Hello again :)"
            ;;
        bye)
            echo "Bye!"
            break
            ;;
        *)
            echo "Cannot understand please type either "hello" or "bye""
    esac
done
