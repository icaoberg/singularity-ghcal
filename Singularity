Bootstrap: docker
From: ubuntu:16.04

IncludeCmd: yes

%labels
    AUTHOR icaoberg
    EMAIL icaoberg@cmu.edu
    WEBSITE http://www.cbd.cmu.edu/icaoberg

%runscript
    exec /bin/bash "$@"

%post
    /usr/bin/apt-get update && apt-get install -y --no-install-recommends apt-utils
    /usr/bin/apt-get update --fix-missing
    /usr/bin/apt-get install -y curl nodejs npm
    ln -s /usr/bin/nodejs /usr/bin/node
    npm install --global ghcal

    mkdir /scratch
    mkdir /share
    mkdir /images
    mkdir /projects
    mkdir /containers

####################################################################################
%appenv ghcal
    APP=/usr/local/bin/
    export APP

%apphelp ghcal
    For more information about goto visit https://github.com/IonicaBizau/ghcal

%apprun ghcal
    ghcal "$@"
