#!/bin/bash


folderName=$1
logArchiveJob="0 1 * * * /media/matt/backup/LogArchive.sh $1"

# Check if the job already exists
if crontab -l 2>/dev/null | grep -Fq "$logArchiveJob"; then
    echo "Cron job already exists."
else
    (crontab -l 2>/dev/null; echo "$logArchiveJob") | crontab -
    echo "Cron job added sucessfully."
fi