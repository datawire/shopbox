#!/usr/bin/env bash
set -euxo pipefail

apt-get update && apt-get -y install --no-install-recommends \
    apt-transport-https \
    bash-completion \
    ca-certificates \
    curl \
    netbase \
    python \
    python3 \
    software-properties-common \
    sudo && \
    rm -rf /var/lib/apt/lists/*

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#curl -s https://packagecloud.io/install/repositories/datawireio/telepresence/script.deb.sh | bash

apt-get update && \
   apt-get -y install docker-ce && \
#   apt-get -y install --no-install-recommends telepresence && \
   rm -rf /var/lib/apt/lists/*

sed -i.bkp \
    -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' \
    /etc/sudoers
