#!/bin/bash

USERID=$(id -u)
VALIDATE(){
     echo "Exit status: $1"
     echo "what are you doing: $2"
}

if [ $USERID -ne 0 ]
then
    echo " please get access root and run"
    exit 1 # manually come out
else
    echo "super user"
fi    

dnf install mysql -y
VALIDATE $? "installing mysql"


dnf install git -y
VALIDATE $? "installing git"