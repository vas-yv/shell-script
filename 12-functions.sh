#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/vas/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 .. fail"
        exit 1
    else 
        echo "$2 ..success"
    fi         
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