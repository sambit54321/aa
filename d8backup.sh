#!/bin/bash
# WRITTEN BY SAMBIT KUMAR PRADHAN
# Database credentials
user="root"
password="I9t!er1mkt"
host="localhost"
db_name="trackplus"
# Other options
backup_path="/home/laptop69/Desktop/dbbackup"
date=$(date +"%d-%b-%Y")
# Set default file permissions
umask 177
# Dump database into SQL file
#mysqldump --user=$root --password=$I9t!er1mkt --host=$host $trackplus >$/home/laptop69/Desktop/d888back$trackplus-$date.sql
mysqldump --user=root --password=I9t!er1mkt --default-character-set=utf8 trackplus | gzip > "$home/laptop69/Desktop/dbbackup"

# Delete files older than 30 days
find $/home/laptop69/Desktop/dbbackup* -mtime +30 -exec rm {} \;


#DB backup log
echo -e "$(date +'%d-%b-%y  %r '):ALERT:Database has been Backuped"    >>/var/log/DB_Backup.log

#fi
