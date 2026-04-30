#!/bin/bash
# Copyright (c) 2019 icaoberg, Carnegie Mellon University

IMAGE=singularity-ghcal.sif
DEFINITION=Singularity

if [[ "$(uname)" == "Darwin" ]]; then
	SCRIPT_DIR="$(realpath "$(dirname "$0")")"
	limactl shell apptainer -- bash -c "
		cd /tmp && \
		apptainer build '${IMAGE}' '${SCRIPT_DIR}/${DEFINITION}' && \
		cp '${IMAGE}' '${SCRIPT_DIR}/'
	"
	exit $?
fi

if [ -f "$IMAGE" ]; then
	rm -fv "$IMAGE"
fi

sudo singularity build "$IMAGE" "$DEFINITION"
