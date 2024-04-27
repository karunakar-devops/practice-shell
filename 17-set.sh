#!/bin/bash

set -e 

Error_handling(){
    echo "error at line no :$1 msg:$2"
}

trap 'Error_handling ${LINENO} "$BASH-COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1 
else
    echo "You are super user"
fi

dnf install mysql-server -y 

dnf install tree -y

