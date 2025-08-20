#!/bin/bash

#this is function defination
function make_baby() {

read -p "enter you age: " men
read -p "enter you wife age: " wife

if [[ $men -ge "28" ]];
then
	echo "you should have baby"
elif [[ $wife -ge $men ]];
then 
	echo "you should have baby"
else
	echo "you can wait"

fi

}

#this is function call
make_baby
