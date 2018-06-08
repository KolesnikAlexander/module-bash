#!/usr/bin/bash
if [ -z $1 ] || [ -z $2 ]; then 
  exit 1
fi
echo "$2" | rev | cut -d"/" -f1 | rev
grep -in $1 $2 > .f
n=$(cat .f | wc -l)
awk -F: '{print $1}' .f

