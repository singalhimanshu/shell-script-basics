#!/bin/bash
# hello_world: Prints out hello world to the screen.

: << END
`#!` is known as shebang. Shebang is interpreted by the Kernel and the
 program specified after shebang is used to execute the script.
 The kernel does something like this:
/bin/bash ./script_name.sh
END

# single line comment
# NOTE: Single line comments are preferred over multi-line comments

echo "Hello World!"
