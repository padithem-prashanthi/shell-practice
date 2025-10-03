#!bin/bash

echo "Please enter you PIN number"
read -s PIN_NUMBER #PIN_NUMBER is variable

echo "Pin entered is : $PIN_NUMBER"

echo "Enter value for x:"
read x 
echo "enter value for y:"
read y
sum=$((x + y))
echo $sum