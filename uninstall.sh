#!/bin/bash

IMAGE=singularity-ghcal
DIRECTORY=~/.singularity

FILES=($DIRECTORY/$IMAGE.simg ~/bin/ghcal)

for FILE in "${FILES[@]}"
do
	echo "Removing "$FILE
	if [ -f $FILE ]; then
		rm -fv $FILE
	fi
done
