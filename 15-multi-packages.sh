#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script_name-$timestamp.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

validate(){
  if [ $1 -ne 0 ]
  then 
      echo -e "$2..$R fail $N"
      exit 1
  else
      echo -e "$2..$G success $N"
  fi        
}

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
      dnf install $i -y &>>$logfile
      validate $? "installation of $i"
  fi 
done