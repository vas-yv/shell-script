#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " please get access root and run"
    exit 1 # manually come out
else
    echo "super user"
fi    

dnf install mysqll -y
if [ $? -ne 0 ]
then
    echo " installtion of mysql...failure"
fi    

echo "is this proceding?"