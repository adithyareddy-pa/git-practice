#!/bin/bash

USERID=$(id -u)

echo "User ID is : $USERID"

if [ $USERID -ne 0 ]
then
    echo "ERROR: run with root"
fi

dnf install git -y