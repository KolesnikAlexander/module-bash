#!/usr/bin/bash
ls_out=$(ls -R | xargs -n1)
echo "$ls_out" > .assist
found=false
for var in "$@"
do
  grepped=$(grep $var .assist)
  if [[ $grepped ]]; then
    echo "$grepped"
    found=true
  fi
done
if [ "$found" = false ]; then 
  echo "the searched PATH is unexisting"
fi
