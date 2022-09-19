#!/bin/bash
myfile=if.sh
if [ -f  $myfile ]
then
  echo "有找到檔案：" $myfile
  echo "Yes, found: " $myfile
fi
