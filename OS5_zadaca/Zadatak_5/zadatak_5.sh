#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Morate unjeti tocno dva argumenta"
	exit 1
fi

znakovi=$1
aps_putanja=$2

okt=""

for ((i=0; i<9; i+=3)); do
	vrijednost=0

	[[ ${znakovi:$i:1} == "r" ]] && ((vrijednost+=4))
	[[ ${znakovi:$((i+1)):1} == "w" ]] && ((vrijednost+=2))
	[[ ${znakovi:$((i+2)):1} == "x" ]] && ((vrijednost+=1))

	okt+=$vrijednost
done
echo "Oktalna dozovla: "$okt""

chmod "$okt" "$aps_putanja"
