# Roadmap.sh Log Archive Tool

https://roadmap.sh/projects/log-archive--tool

## Overview:
A basic log archiving tool that allow you to set the folder to backup and remove old logs.

There is also a script to add the task into your crontab that will run at 01:00 system time.


## Instructions:
+ You will need to amend the **logArchive.sh** to have the correct folder that you wish to back up to.
+ The archive script and if required the cron will need to be run as sudo.
+ When running either of the scripts you will need to pass in the same variable.