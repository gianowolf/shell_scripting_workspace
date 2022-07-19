#!/bin/bash

read -p "Enter the file name: " FILENAME

if [ -e  $FILENAME ]
then 
    if [ -d $FILENAME ]
    then 
        echo "The file is a directory"
    elif [ -f $FILENAME ]
    then
        echo "The file is a regular file"
    else
        echo "The file is not a directory or regular file"
    fi
 else 
    echo "the file does not exist"
 fi
