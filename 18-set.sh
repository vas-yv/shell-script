#!/bin/bash

set -e  

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " please run this script with root access."
    exit 1 # manually exit if error comes
else
    echo " super user"
fi    

dnf install myhfgfhfsql -y
dnf install git -y

echo "is script proceeding?"