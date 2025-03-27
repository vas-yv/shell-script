#!/bin/bash

userid=$(id -u)

validate(){
    echo "exit status : $1"
    echo "what your doing: $2"
}

if [ $userid -ne 0 ]
then
    echo "please get root access to run this"
    exit 1 # manually exit
else
    echo "super user"    
fi

dnf install git -y
validate $? "installion of mysql"

dnf install mysql -y
validate $? "installation of git"
