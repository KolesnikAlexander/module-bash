#!/bin/bash


if [ -z $1 ] || [ -z $2 ]; then
  exit 1
fi

if [ $1 = '-u' ] || [ $1 = '--url' ]; then
  grep -Po '(^|\t)https:[A-Za-z0-9\/\.]+' $2
elif [ $1 = '-e' ] || [ $1 = '--email' ]; then
  grep -Po '(^|\t)[A-Za-z0-9\.]+@[A-Za-z0-9\.]+\.[A-Za-z0-9\.]+' $2
else
  exit 1
fi
