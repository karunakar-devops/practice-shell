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

#echo "is still proceeding?"

if [ $? -ne 0 ]
then
    echo "installtion of mysql....failure"
    exit 1
    
else
    echo "installation of mysql....sucess"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "installtion of git....failure"
    exit 1
    
else
    echo "installation of git....sucess"
fi





