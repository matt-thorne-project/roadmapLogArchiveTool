#!/bin/bash

#Setting variable names
folderName=$1
currentDate=$(date +"%Y%m%d" -u)
deleteDate=$(date --date="14 days ago" +"%Y%m%d" -u)

echo $currentDate
echo $deleteDate