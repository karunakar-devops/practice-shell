#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run with root access"
    exit 12
    
else
    echo "you are root user"
fi

dnf install mysql -y

echo "is still proceeding?"

if [ $USERID -ne 0 ]
then
    echo "please run with root access"
    exit 12
    
else
    echo "you are root user"
fi

dnf install git -y




