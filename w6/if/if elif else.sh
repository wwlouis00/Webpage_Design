#!/bin/bash
if [ $1 -eq $2 ]
then
  echo "$1 == $2"
elif [ $1 -gt $2 ]
then
  echo "$1 > $2"
else
  echo "$1 < $2"
fi
