#!/bin/bash

    USERID=$(id -u)

    Validate(){
     if [ $? -ne 0]
     then
     echo "$2 ---- failure"
     exit 1
     else
     echo "$2---- Success"
    fi
    }

    if[ $? -ne 0 ]
    then
    echo "please run with root access"
    exit 1
    else 
    echo "running with super user"
    fi

    dnf install mysql -y 
    Validate $1 Installaion of Mysql

    dnf insatll git -y 
    Validate $1 Installaion of git
