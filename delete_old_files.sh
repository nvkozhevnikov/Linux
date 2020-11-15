#!/usr/bin/bash

#Specify path to the archives
PATH_ARCH="<---ENTER PATH--->"

#Count files in a directory
QUANTITY_FILES=`ls $PATH_ARCH | wc -l`

#Set the max number of files 
MAX_FILES=4

if [ $QUANTITY_FILES > $MAX_FILES ]
then
        cd $PATH_ARCH
        ls | tail -n+$MAX_FILES | xargs rm -f
fi


