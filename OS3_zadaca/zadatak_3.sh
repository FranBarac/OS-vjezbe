#!/bin/bash

cd screenshots

brojac=1

for d in *; do
	novo_ime="screenshot_${brojac}_$d"
	mv "$d" "$novo_ime"
	echo "$novo_ime"
	brojac=$((brojac +1))
done
