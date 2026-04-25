#!/bin/bash

apsolutna=$1


if [ $# -ne 1 ]; then
	echo "Morate prosljediti tocno jedan argument"
else
	if [ ! -d "$apsolutna" ]; then
		echo "Direktorij na zadnoj putanji ne postoji"
		exit 1
	fi

	if [ -d "$apsolutna/.git" ]; then
		cd "$apsolutna"
                touch repozitorij_info.txt
                git add repozitorij_info.txt
                git commit -m "Dodana datoteka repozitorij_info.txt"
                git  log
	else
		echo "Ne postoji na toj putanji .git"
	fi
fi
