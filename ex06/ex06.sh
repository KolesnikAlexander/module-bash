#!/bin/bash
map(){
	com=$1
	shift
	for i in "$@"
	do
 		eval "$com $i" 
	done	
}

