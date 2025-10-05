#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#echo -e "$G Hello World $N"
#echo "Check this color"

#install mysql nginx python3
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo -e "$R ERROR:: Please run this script with root privelge $N"
    exit 1 # filure is other than 0 to exit
fi

VALIDATE(){ # Functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then  #previous command exit status if 0 success otherwise failed
        echo -e "Installing  $2 ..... $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2 .... $G SUCCESS $N"
    fi
}

dnf list installed mysql
#Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE  $? "MySql"
else
    echo "MySQL already exists .... $Y SKIPPING $N"
fi


#install nginx
dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE  $? "Nginx"
else
    echo "NGINX already exists ... $Y SKIPPING $N"
fi

#install Python3
dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE  $? "python3"
else
    echo "PYTHON3 already exists ... $Y SKIPPING $N"
fi
