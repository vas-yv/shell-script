#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "please get root access to run this"
    exit 1 # manually exit
else
    echo "super user"    
fi

validate(){
    if [ $1 -ne 0 ]
    then
        echo " $2..fail"
        exit 1
    else
        echo "$2..success"
    fi        
}



dnf install git -y
validate $? "installion of mysql"

dnf install mysql -y
validate $? "installation of git"