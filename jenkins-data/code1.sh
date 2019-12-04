#!/bin/bash
COND=$1
NAME=$2
COUNTRY=$3

if [ "$COND" = "true" ];then
  echo "Hello, $NAME from $COUNTRY"
else
  echo "Mark true if you want to see the message"
fi
  
