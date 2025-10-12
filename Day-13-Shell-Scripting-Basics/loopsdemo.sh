#!/bin/bash
#
# This script creates multiple files based on provided range


<< comment
 1 is for file name 
 2 is for starting number
 3 is for ending number
comment

for (( num = $2; num <= $3; num++ ))
do
    touch "$1$num" 
done
