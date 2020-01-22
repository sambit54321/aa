#!/bin/bash
# written by sambit@tier1digital.co
# Database backup script
YEAR='date +%Y'
MONTH='date +%M'
WEEK='date +%W'
DAY='date +%D'
HOUR='date +H'
mkdir -p /home/laptop69/Desktop/dbbackup/d8-backup.sql
mysqldump -uroot -pI9t!er1mkt trackplus > /home/laptop69/Desktop/dbbackup/d8-backup.sql
############

To="kumarpradhansambit@gmail.com"
ram_free=$(free -mt|grep Total:|awk '{print $4}')

#if [$ram_free -le 700]
#then
echo "sending mail beacause your ram size is less than 700"
echo "warring ram size is low"|sendmail $TO
fi
