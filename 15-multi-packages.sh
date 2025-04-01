#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name-$timestamp.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $userid -ne 0 ]
then
    echo "user should run with root access"
    exit 1
else
    echo "super user"
fi

for i in $@
do
  echo "package to install:$i"
  dnf list install $i &>>$logfile
  if [ $? -eq 0 ]
  then
      echo -e "$i already installed...$R skipping $N"
  else
      echo "$i not installed...$R need to install $N"
  fi 
done