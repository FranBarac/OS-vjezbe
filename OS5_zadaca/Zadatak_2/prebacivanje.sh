#!/bin/bash

for file in old_dir/*; do
	mv "$file" new_dir/
	echo "Datoteka prebacena"
	sleep 1
done
