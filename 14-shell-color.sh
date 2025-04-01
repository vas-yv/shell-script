#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
script_name=$(echo $0 | cut -d "." -f1)
logfile=/tmp/$script-name-$timestamp.sh

if [ $userid -ne 0 ]
then
    echo -e "\e[31m user should run with root access"
    exit 1
else
    echo -e "\e[32m super user"
fi        


dnf install mysql -y &>>$logfile
if [ $? -ne 0 ]
then
    echo -e "\e[31m installation of mysql is failed"
    exit 1
else
    echo -e "\e[32m installtion of mysql got success"
fi        


dnf install git -y &>>$logfile
if [ $? -ne 0 ]
then
    echo -e "\e[31m installation of git is failed"
    exit 1
else
    echo -e "\e[32m installation of git got success"
fi        