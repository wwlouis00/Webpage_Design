#!/bin/bash

if [ -f  "$1" ]
then
  echo "有找到檔案：" $1
  echo "Yes, found: " $1
else
  echo "沒看到檔案：" $1
  echo "Not found the file:" $1
fi
