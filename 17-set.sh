#!/bin/bash

set -e 

USERID=$(id -u)

if [ USERID -ne 0 ]
then
    echo "Please run this script with root access"
else
    echo "You are super user"
fi

VALIDATE(){
if [ $? -ne 0 ]
then
    echo "installation of mysql.......Failure"
else
    echo "installation of mysql......success"
fi
}

dnf install mysqleee-server -y 

dnf install tree -y

