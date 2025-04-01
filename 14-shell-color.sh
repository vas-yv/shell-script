#!/bin/bash

userid=$(id -u)
if [$userid -ne 0 ]
then
    echo "user should run with root access"
    exit 1
else
    echo "super user"
fi        


dnf install mysqll -y


dnf install gitt -y