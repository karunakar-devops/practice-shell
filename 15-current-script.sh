#!/bin/bash

COURSE="Devops from Current Script"

echo "Before calling other script, course=$COURSE"
echo "Process Id of current shell script:$$"

./16-other-script.sh

echo "After calling other script, course=$COURSE"

