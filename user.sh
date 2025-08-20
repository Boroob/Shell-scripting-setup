#!/bin/bash

<<info
this is to create new user


info
function add_user() {
user=$1

cat /etc/passwd | grep "$user" > /dev/null

if [[ $? -eq 0 ]];
then 
      echo " username "$user" already exist, please enter different username "
       exit 1
else
	sudo useradd -m $user
	echo "user $user has been created succesfully"
fi
}

function del_user(){
user=$1
cat /etc/passwd | grep "$user" > /dev/null

if [[ $? -eq 0 ]]; then

	sudo userdel -f $user
	echo "User $user has been deleted succesfully"
else
	echo "user $user does not exist"
	exit 1
fi
}

echo "please select one option:
Enter c to create an user
Enter d to delete an user
Enter r to reset the password of an user"
read option

if [[ "$option" == "c" ]];
then 
    read -p "enter username: " name
    add_user "$name"

    elif [[ "$option" == "d" ]]; then
	read -p "enter username to delete: " name 
	del_user "$name"
   elif [[ "$option" == "r" ]]; then
	   read -p "enter username to change password: " name
	   if grep -q "^$name:" /etc/passwd; then
	   sudo passwd "$name"
          else
	    echo "User $name does not exist"
	    exit 1
	   fi
else
	  echo "invalid option seleted"
	  exit 1
fi
