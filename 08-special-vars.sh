#!/bin/bash

echo "All varaibles:$@"
echo "No of variables Passed:$#"
echo "Name of script running:$0"
echo "present working directory:$PWD"
echo "Home Directory:$HOME"
echo "Exit ststus of last command:$?"
echo "which user running this script:$USER"
echo "process id of the current shell script:$$"
Sleep 60&
echo "process Id of last background command:$!"
