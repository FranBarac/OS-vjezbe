#!/bin/bash

arg=$1

if [[ arg -ge 1 && arg -le 10 ]];then
	for (( i=1; i<="$arg"; i++ )); do
		echo "$i" >> brojevi.txt
	done
else
	echo "Uneseni broj mora biti u rasponu 1-10"
fi 
