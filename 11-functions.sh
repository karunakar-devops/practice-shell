#!/bin/bash

    USERID=$(id -u)

    Validate(){
     if [ $1 -ne 0]
     then
     echo "$2 ---- failure"
     exit 1
     else
     echo "$2---- Success"
    fi
    }

    if[ $USERID -ne 0 ]
    then
    echo "please run with root access"
    exit 1
    else 
    echo "running with super user"
    fi

    dnf install mysql -y 
    Validate $? Installaion of Mysql

    dnf insatll git -y 
    Validate $? Installaion of git
