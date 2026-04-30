Bootstrap: docker
From: ubuntu:24.04

%labels
    AUTHOR icaoberg
    EMAIL icaoberg@gmail.com
    VERSION 1.0.0
    COPYRIGHT Copyright (c) 2019 icaoberg, Carnegie Mellon University

%environment
    export DEBIAN_FRONTEND=noninteractive
    export PATH=/usr/local/bin:$PATH

%runscript
    exec /bin/bash "$@"

%post
    export DEBIAN_FRONTEND=noninteractive
    apt-get update && apt-get install -y --no-install-recommends \
        curl \
        nodejs \
        npm
    apt-get clean && rm -rf /var/lib/apt/lists/*
    npm install --global ghcal

    for dir in /images /projects /containers /share /scratch; do
        [ -d "$dir" ] || mkdir -p "$dir"
    done

####################################################################################
%appenv ghcal
    APP=/usr/local/bin/
    export APP

%apphelp ghcal
    For more information about ghcal visit https://github.com/IonicaBizau/ghcal

%apprun ghcal
    ghcal "$@"
