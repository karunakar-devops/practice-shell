#!/bin/bash

    USERID=$(id -u)

    if [ $USERID -e 0 ]
    then 
        echo "running with root user"
    else 
        echo "please run with super user"
    fi

    dnf install mysql -y



