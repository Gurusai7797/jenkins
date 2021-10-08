#!/bin/bash

DATE=$(date +%H-%M-%S)
H=$1
PASS=$2
DB=$3
BF=db-$DATE.sql
AWSPAS=$4
B=$5

mysqldump -u root -h $H -p$PASS $DB > /tmp/BU/$BF && \

export AWS_ACCESS_KEY_ID=AKIA2OJWJFNEQMS2FEPR && \
export AWS_SECRET_ACCESS_KEY=$AWSPAS && \

echo "uploadeing you $BF" && \

aws s3 cp /tmp/BU/$BF s3://$B/$BF

