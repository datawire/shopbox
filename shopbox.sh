#!/usr/bin/env bash
set -euxo pipefail

docker run --rm -it \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v ${HOME}/.kube:/home/shopbox/.kube \
    -v ${HOME}/.minikube:${HOME}/.minikube \
    -v $(pwd):/workspace \
    --privileged \
    datawire/shopbox:latest
