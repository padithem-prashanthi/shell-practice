#!/bin/bash

#Step1 check if user has root access or not
#if root access then proceed otherwise stop and tell them to run with root access
#Step 2 dnf install mysql -y check extit staus , if 0 success otherwise show the user it is failed
#if root user id will be 0, if not its not root user

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelge"
    exit 1 # filure is other than 0 to exit
fi

dnf install mysql -y

if [ $? -ne 0 ]; then  #previous command exit status if 0 success otherwise failed
    echo "ERROR:: Installing MySQL is Failure"
    exit 1
else
    echo "Installing MYSQL is SUCCESS"
fi


