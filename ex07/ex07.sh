#!/bin/bash
if [[ -z "$1" ]] || [[ "$1" -eq 0 ]]; then
	exit 1
fi
res=$(head "-$1" resourses/surnames.txt | grep -v 'Q-Chem' | sed "s/\.//g ; s/\-//g" | cat)
if [[ $res ]]; then
	echo "$res"
else
	echo ""
fi
