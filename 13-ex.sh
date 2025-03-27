#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "please get root access to run this"
fi

dnf install git -y

echo "is procedding further?"