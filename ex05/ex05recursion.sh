#!/bin/bash
if [ -z $2 ]; then
  : 
elif ! [ "$2" -eq "$2" ] 2>/dev/null
then
    exit 1
fi

cmd=$0
op=$1
shift
res=0
case $op in
     "-s")
         for i in $@
         do
           res=$(echo "$res + $i" | bc)  
         done
          ;;
     "-e")
         for i in $@
         do
           [ $((i%2)) -eq 0 ] && res=$(echo "$res + $i" | bc)  
         done
          ;;
     "-o")
         for i in $@
         do
          ! [ $((i%2)) -eq 0 ] && res=$(echo "$res + $i" | bc)  
         done
          ;;
     "-m")
          params=$(echo "${@:1:$#}")
          res=$($cmd -s $params)
          res=$(echo $(( $res / $# ))) 
          ;;
     *)
          ;;
esac
echo "$res"
