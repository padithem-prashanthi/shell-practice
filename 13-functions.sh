#!/bin/bash
#install mysql nginx python3
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelge"
    exit 1 # filure is other than 0 to exit
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then  #previous command exit status if 0 success otherwise failed
        echo "ERROR:: Installing $2 is Failure"
        exit 1
    else
        echo "Installing $2 is SUCCESS"
    fi
}

dnf install mysql -y
VALIDATE  $? "MySql"

#install nginx
dnf install nginx -y
VALIDATE  $? "Nginx"


#install mongodb
dnf install python3 -y
VALIDATE  $? "python3"

