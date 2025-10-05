#!/bin/bash

#every thing in shell is considered as string, values changes as per their use

NUMBER1=100
NUMBER2=200
NAME=DEVOPS
SUM=$(($NUMBER1+$NUMBER2+$NAME))
echo "Sum is : ${SUM}"

LEADERS=("Modi" "Putin" "Trudo" "Trump")
echo "All leaders: ${LEADERS[@]}"

echo "First leader: ${LEADERS[0]}"
echo "Second Leader: ${LEADERS[1]}"
echo "Third: ${LEADERS[2]}"
echo "Fourth: ${LEADERS[3]}"

echo "$LEADERS"