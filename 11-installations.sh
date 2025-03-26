#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " please run this script with root access."
    exit 1 # manually exit if error comes
else
    echo " super user"
fi    

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "Installtion of mysql...FAILURE"
    exit 1
 else
     echo "Installtion of mysql...success"   
fi    

echo "is script proceeding?"