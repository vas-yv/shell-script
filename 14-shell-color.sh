#!/bin/bash

userid=$(id -u)
if [$userid -ne 0 ]
then
    echo -e "\e[31m user should run with root access"
    exit 1
else
    echo -e "\e[32m super user"
fi        


dnf install mysqll -y


dnf install gitt -y