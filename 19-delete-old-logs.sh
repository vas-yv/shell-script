#!/bin/bash

Source_directory=/tmp/app-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $Source_directory ]
then
    echo -e "$G $Source_directory exist $N "
else
    echo -e "$R please make sure $Source_directory exists $N "
    exit 1
fi

files=$(find "$Source_directory" -name "*.log" -mtime +14 )

while IFS= read -r line
do
  echo "Deleting file: $line"
  rm -rf $line
done <<< $files
    