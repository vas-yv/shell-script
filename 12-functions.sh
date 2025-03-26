#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " please get access root and run"
    exit 1 # manually come out
else
    echo "super user"
fi    

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo " installtion of mysql...failure"
    exit 1
 else
     echo " installtion of mysql..success"   
fi

dnf install git -y
if [ $? -ne 0 ]
then
    echo " installtion of git..failure"
    exit 1
else
    echo " installtion of git..success"
fi        
echo "is this proceding?"