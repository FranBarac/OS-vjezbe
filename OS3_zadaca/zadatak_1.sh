#!/bin/bash

apsolutna=$1
nastavak=$2
brojac=0

if [[ $# -eq 2 ]]; then
	for d in "$apsolutna"/*."$nastavak"; do
		if [ -f "$d" ]; then 
			echo $(basename "$d")
			brojac=$((brojac + 1))
		fi
	done
	if [ "$brojac" -eq 0 ]; then
		echo "Ne postoji datoteka s tim nastavkom"
	fi

else
	echo "Morate unjeti tocno dva argumetna"

fi
