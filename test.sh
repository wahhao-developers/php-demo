#!/bin/bash
ls -A  /var/www/html/db/ |grep *.sql 2> /dev/null

if [ $? -eq 0 ]
then
mysql -u test -h test.caylyft2tdnt.us-west-1.rds.amazonaws.com --password=test123## test < test.sql
else
echo ".sql file not present"
 fi
