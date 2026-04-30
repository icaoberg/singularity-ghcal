#!/bin/bash
# Copyright (c) 2019 icaoberg, Carnegie Mellon University

IMAGE=singularity-ghcal
DIRECTORY=~/.singularity

if [ ! -d $DIRECTORY ]; then
	mkdir $DIRECTORY
fi

if [ ! -d ~/bin ]; then
	mkdir ~/bin
fi

if [ ! -f $DIRECTORY/$(echo $IMAGE | cut -d"-" -f2).sif ]; then
	echo singularity pull --name $(echo $IMAGE | cut -d"-" -f2).simg shub://icaoberg/$IMAGE
	singularity pull --name $(echo $IMAGE | cut -d"-" -f2).simg shub://icaoberg/$IMAGE
	mv -v $(echo $IMAGE | cut -d"-" -f2).simg $DIRECTORY
fi

# ┌─────┐
# │ghcal│
# └─────┘
cat << EOF > ~/bin/ghcal
#!/bin/bash

singularity run --app ghcal ~/.singularity/$(echo $IMAGE | cut -d"-" -f2).simg $1
EOF

chmod +x ~/bin/ghcal
