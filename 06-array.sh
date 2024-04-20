#!/bin/bash

Fruits=("Apple" "Orange" "Mango" "Bannana" "Grapes")

echo "First Fruit is:: ${Fruits[0]}"
echo "Second Fruit is:: ${Fruits[1]}"
echo "Third Fruit is:: ${Fruits[2]}"
echo "Fourth Fruit is:: ${Fruits[3]}"
echo "Fifth Fruit is:: ${Fruits[4]}"
echo "sixth Fruit is:: ${Fruits[5]}"
echo " Fruits are:: ${Fruits $@}"
