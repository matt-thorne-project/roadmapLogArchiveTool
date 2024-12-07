# Roadmap.sh Log Archive Tool

[https://roadmap.sh/projects/log-archive-tool](https://roadmap.sh/projects/log-archive-tool)

## Overview:
A basic log archiving tool that allows you to set the folder to backup and remove old logs. This is set to keep logs for 14 days.

A script is provided to add the task into your crontab that will run at 01:00::00 system time each night.

## Instructions:
+ You need to update **logArchive.sh** to have the correct folder you wish to store your backups in.
+ The archive script and, if required, the cron will need to be run as sudo.
+ You will need to pass in the same variable when running either of the scripts.
