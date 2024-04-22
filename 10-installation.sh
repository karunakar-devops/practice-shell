#!/bin/bash

    USERID=$(id -u)

    if [ $USERID -eq 0 ]
    then 
        echo "running with root user"
    else 
        echo "please run with super user"
    fi

    dnf install mysql -y

    if [ $? -eq 0 ]
    then
        echo "Installation of mysql....success"
    else
        echo "Installation of mysql....failure"
    fi

   

    if [ $? -eq 0 ]
    then
        echo "Installation of git....success"
    else
        echo "Installation of git....success"
    fi

     dnf install git -y




