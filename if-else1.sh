#!/bin/bash

read -p "enter your arrival time: " t1
read -p "enter your departure time: " t2
if [[ $t1 == "12" ]];
then
	echo "Karan is home"
elif [[ $t1 > $t2 ]];
then
	echo"Karan is home"
else
	echo "Karan is on the way"
fi
