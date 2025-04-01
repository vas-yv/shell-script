#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo -e "\e[31m user should run with root access"
    exit 1
else
    echo -e "\e[32m super user"
fi        


dnf install mysql -y
if [ $? -ne 0 ]
then
    echo -e "\e[31m installation of mysql is failed"
    exit 1
else
    echo -e "\e[32m installtion of mysql got success"
fi        


dnf install git -y
if [ $? -ne 0 ]
then
    echo -e "\e[31m installation of git is failed"
    exit 1
else
    echo -e "\e[32m installation of git got success"
fi        