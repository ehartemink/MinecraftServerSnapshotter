#!/bin/bash 

# define MINECRAFT_SERVER_PASSWORD
# define backup_path
source ./config.sh 

cd $backup_path
cd ../

wget -m --user="edwardhartemink@gmail.com.209994" --password="$MINECRAFT_SERVER_PASSWORD" ftp://51.161.119.178 --directory-prefix $backup_path/

cd $backup_path
git add . 
git commit -m "$(date +"%d-%m-%Y")"
