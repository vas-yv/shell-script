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
      echo "$2..fail"
      exit 1
  else
      echo "$2..success"
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
      validate $? "installation of package"
  fi 
done