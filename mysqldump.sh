#!/bin/bash
DATE="$(date +%Y%m%d)"
logger -t mysql-backup 'start mysql backup'
/usr/bin/mysqldump --user=<ENTER DATABASE USER> --host=<ENTER DATABASE HOST> --password=<ENTER DATABASE PASSWORD> <ENTER DATABASE NAME> | gzip > /home/<ENTER PATH>_$DATE.sql.gz>
logger -t mysql-backup 'finish mysql backup'

