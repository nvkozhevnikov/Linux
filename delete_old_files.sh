#!/bin/bash

#Specify path to the archives
QUANTITY_FILES=`ls /home/<--ENTER PATH--> | wc -l`

#Set the max number of files 
MAX_FILES=33


if [ $QUANTITY_FILES \> $MAX_FILES ]
then
        cd /home/<--ENTER PATH-->
        ls | tail -n+$MAX_FILES | xargs rm -f
fi
