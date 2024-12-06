#!/bin/bash

#Setting variable names
folderName=$1
currentDate=$(date +"%Y%m%d" -u)
currentBackupDate=$(date --date="Yesterday" +"%Y%m%d" -u)
deleteDate=$(date --date="14 days ago" +"%Y%m%d" -u)

#Defining function to compress and move logs, then remove old logs
rotateFunction () {
    gzip /var/log/$folderName/access.$currentBackupDate.log
    gzip /var/log/$folderName/error.$currentBackupDate.log

    cp /var/log/$folderName/access.$currentBackupDate.log /mnt/
    cp /var/log/$folderName/error.$currentBackupDate.log /mnt/

    rm /var/log/$folderName/access.$deleteDate.log.gz
    rm /var/log/$folderName/error.$deleteDate.log.gz

    echo "$currentDate - Backup completed" >> /xxxx/logRotate.log;
}


#Check if a folder name has been passed into the arg then rotate logs if it has been supplied
if [ -z "$1" ]
    then echo "$currentDate - No file path entered" >> /xxxx/logRotate.log;
    else rotateFunction;
fi


