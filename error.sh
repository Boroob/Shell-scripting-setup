#!/bin/bash

create_directory() {
   
mkdir new-dir
 
}

if ! create_directory; then
	echo "the directory already exist"
	exit 1
fi

echo "this should not work otherwise"
