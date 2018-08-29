#!/bin/bash

# Config Variables:
#USER="root"
#HOST="localhost"

# Read mysql root password:
#echo -n "Type mysql root password: "
#read -s PASS
#echo ""

# Exit when folder doesn't have .sql files:

cd /var/www/html/db
ls -A   |grep *.sql 2> /dev/null

if [ $? -eq 0 ]
then
mysql -u test -h test.caylyft2tdnt.us-west-1.rds.amazonaws.com --password=test123## test < test.sql
else
echo ".sql file not present"
 fi
 #db import
 #mysql -u test -h test.caylyft2tdnt.us-west-1.rds.amazonaws.com --password=test123## test < test.sql
#then
#echo "done"
# fi
