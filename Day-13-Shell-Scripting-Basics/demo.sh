#!/bin/bash

# This is single line comment 

<< comment 
This is 
Multi line comment
comment

name="person"  # Variable : This can be changed 

read  -p "Enter username:" username

echo "You have entered $username"

sudo useradd -m $username

echo "New User Added"

echo "Printing Arguments $0 $1"
