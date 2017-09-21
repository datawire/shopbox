#!/usr/bin/env bash
set -euxo pipefail

mkdir -p workspace
cd workspace

sudo docker run --rm -it \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(pwd):/workspace \
    datawire/shopbox:latest
