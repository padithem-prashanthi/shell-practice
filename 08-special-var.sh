#!/bin/bash
#default varaiable by system

echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"

echo "Name of the script: $0"
echo "Current working directory: $PWD"
echo "Who is running this script: $USER"
echo "Home directory of user: $HOME"
echo "PID of this script" $$"
sleep 50 &
echo "PID of the last command in background is : $!"
