#!/bin/bash

set -e  

failure(){
    echo "Failed at $1: $2"
}

trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

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

#output like this
# super user
#Last metadata expiration check: 0:25:40 ago on Sun Apr 20 09:55:21 2025.
#No match for argument: myhfgfhfsql
#Error: Unable to find a match: myhfgfhfsql
#Failed at 21: dnf install myhfgfhfsql -y
