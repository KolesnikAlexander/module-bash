#!/bin/bash
if [ -z $1 ]; then 
  exit 1
fi

touch .f
for i in "${@:2}"
do
	grep -in $i $1 > .f
	n=$(cat .f | wc -l)
	echo "$i $n" 
	awk -F: '{print $1}' .f	
done
rm .f