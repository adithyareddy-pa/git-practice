#!/bin/bash

USERID=$(id -u)

echo "User ID is : $USERID"

if [ $USERID -ne 0 ]
then
    echo "error: run with root"
    exit 1
fi

#dnf install git -y

dnf list installed git 

if [ $? -ne 0 ]
then
    echo "git not installed"
    dnf install git -y
else
    echo "git already installed"
fi