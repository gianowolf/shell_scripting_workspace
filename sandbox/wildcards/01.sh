#!/bin/bash

# Renames all files in the current directory that end in .jpg
# new name: todays date YYYY-MM-DD
# Example mycat.jpg to 2016-10-31-mycat.jpg
shopt -s nullglob 

DATE=$(date +%F)
FILES=$(cd $1 && ls *.jpg)

for FILE in $FILES 
do
    echo ${DATE}-${FILE}
done

