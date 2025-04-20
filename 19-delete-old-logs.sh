#!/bin/bash

Source_directory=/tmp/app-logs

if [ -d $Source_directory ]
then
    echo "$Source_directory exits"
else
    echo "please make sure $Source_directory exits"
    exit 1
fi

Files=$(find $Source_directory "*.log" -mtime +14)

while IFS= read -r line
do
  echo " deleteing files: $line"
  rm -rf $line
done <<< $Files   