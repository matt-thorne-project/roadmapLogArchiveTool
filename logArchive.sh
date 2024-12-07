#!/bin/bash

#Setting variable names
folderName=$1
currentDate=$(date +"%Y%m%d-%H%m%S" -u)
#Update the folder name
$backupFolder="/media/matt/backup"


#Defining function to compress and move logs, then remove old logs
rotateFunction () {
    #Update the folder name
    tar -czvf $backupFolder/$currentDate.tgz $folderName/*.log

    find $backupFolder/ -type f -mtime +7 -name '*.tgz' -execdir rm -- '{}' \;

    echo "$currentDate - Backup completed" >> $backupFolder/logArchive.log;
}


#Check if a folder name has been passed into the arg then rotate logs if it has been supplied
if [ -z "$1" ]
    then echo "$currentDate - No file path entered" 2>&1 | tee -a $backupFolder/logArchive.log;
    else rotateFunction;
fi


