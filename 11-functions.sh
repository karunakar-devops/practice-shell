#!/bin/bash

    USERID=$(id -u)
    TIMESTAMP=$(date +%F-%H-%M-%S)
    SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
    LOGFILE=(/tmp/$SCRIPT_NAME-$TIMESTAMP.log)

    if [ $USERID -ne 0 ]
    then
    echo "please run with root access"
    exit 1
    else 
    echo "running with super user"
    fi

    Validate(){
     if [ $1 -ne 0 ]
     then
     echo "$2 ---- failure"
     exit 1
     else
     echo "$2---- Success"
    fi
    }
  

    dnf install mysql -y &>> $LOGFILE
    Validate $? "Installaion of Mysql"

    dnf install git -y &>> $LOGFILE
    Validate $? "Installaion of git"
