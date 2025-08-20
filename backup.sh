#!/bin/bash

<< info

this is the script to take backup 
of any perticular folder

eg. ./backup.sh <source> <dest>

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

zip -r "$dest/backup_$timestamp.zip" $src >/dev/null

echo "Backup has been completed."

cd /home/ubuntu/backup_fd/

ls -1t | tail -n +4 | xargs -d '\n' rm -rf --
