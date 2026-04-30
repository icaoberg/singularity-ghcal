#!/bin/bash
# Copyright (c) 2019 icaoberg, Carnegie Mellon University

IMAGE=singularity-ghcal
DIRECTORY=~/.singularity

FILES=($DIRECTORY/$IMAGE.sif ~/bin/ghcal)

for FILE in "${FILES[@]}"
do
	echo "Removing "$FILE
	if [ -f $FILE ]; then
		rm -fv $FILE
	fi
done
