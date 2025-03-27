#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "please get root access to run this"
    exit 1 # manually exit
else
    echo "super user"    
fi

dnf install gitt -y

if [ $? -ne 0 ]
then
    echo " installtion of git failure"
    exit 1 # manuall exit if fail
fi    
echo "is procedding further?"