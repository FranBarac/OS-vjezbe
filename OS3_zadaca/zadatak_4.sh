#!/bin/bash

naziv_direktorija=$1


if [[ $# -ne 1 ]]; then
	echo "Morate unjeti tocno jedan argument"
	exit 1
fi

if [[ -d "$naziv_direktorija" ]]; then
	cd "$naziv_direktorija" 
	zip -r ../svi_zapisi.zip .
else
	echo "Direkotiji ne psotoji di i skripta"
fi
