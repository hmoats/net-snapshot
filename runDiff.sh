#!/bin/bash
OLDFILE=$1
NEWFILE=$2

if [ ! -f "$OLDFILE" ]; then
    echo "$OLDFILE does not exist"
    exit 0
fi

/usr/bin/diff -c $OLDFILE $NEWFILE
