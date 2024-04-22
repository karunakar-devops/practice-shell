#!/bin/bash

    USERID=$(id -u)

    if [ $USERID -eq 0 ]
    then 
        echo "running with root user"
    else 
        echo "please run with super user"
    fi

    dnf install mysql -y



