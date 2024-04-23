#!/bin/bash
 
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"


if [ $USERID -ne 0 ]
then 
    echo "Please run with root user"
    exit 1
else    
    echo "You are super user"
fi

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo -e  "$2..... $R failure" $N
    exit 12
else
    echo -e "$2.... $G success" $N
fi
}

dnf install mysqll -y &>>LOGFILE
VALIDATE $? "Installing Mysql"

dnf install gitl -y &>>LOGFILE
VALIDATE $? "Installing Git"






