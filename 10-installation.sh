#!/bin/bash

UUSERID=$(id -u)

if [ USERID -ne 0 ]
then
    echo "please run with root access"
else
    echo "you are root user"
fi


