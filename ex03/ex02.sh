#!/usr/bin/bash
if [ -z $1 ]; then 
  exit 1
fi
grep -in $2 $1 > .f
n=$(cat .f | wc -l)
echo "$2 $n" 
awk -F: '{print $1}' .f

grep -in $3 $1  > .f
n=$(cat .f | wc -l)
echo "$3 $n" 
awk -F: '{print $1}' .f

grep -in $4 $1 > .f
n=$(cat .f | wc -l)
echo "$4 $n"
awk -F: '{print $1}' .f

#echo "$lines"
#grep -in  resources/1 | awk -F: '{print $1}'
#grep -in Ipsum resources/1 | awk -F: '{print $1}'

#ls_out=$(ls -R | xargs -n1)
#echo "$ls_out" > .assist
#found=false
#for var in "$@"
#do
#  grepped=$(grep $var .assist)
#  if [[ $grepped ]]; then
#    echo "$grepped"
#    found=true
#  fi
#done
#if [ "$found" = false ]; then 
# echo "the searched PATH is unexisting"
#fi
