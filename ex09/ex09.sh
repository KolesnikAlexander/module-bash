#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then
  exit 1
fi

if [ $1 = '-u'] || [ $1 = '--url']; then
  grep -Po '\ https://.*\ ' $2
elif [ $1 = '-e'] || [ $1 = '--email']; then
  grep -Po '\ .*@.*\ ' $2
else
  exit 1
fi
