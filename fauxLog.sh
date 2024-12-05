#!/bin/bash

start_date=$(date +%Y%m%d)

# Create 16 sequential log files with dates
for i in {0..15}
do
  # Calculate the date for each log file
  log_date=$(date -d "$start_date - $i days" +%Y-%m-%d)

  touch "access.$log_date.log"
  echo $log_date > access.$log_date.log
  touch "error.$log_date.log"
  echo $log_date > error.$log_date.log
done
