#!/bin/bash

# Rename files based on the file extension
shopt -s nullglob 

DATE=$(date +%F)
FILES=$(cd $1 && ls *.jpg)

for FILE in $FILES 
do
    echo ${DATE}-${FILE}
done

