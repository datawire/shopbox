#!/usr/bin/env bash
set -euxo pipefail

if [ -e /var/run/docker.sock ]; then
  sudo chown shopbox:shopbox /var/run/docker.sock
fi

/bin/bash
