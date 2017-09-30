#!/usr/bin/env bash
set -euo pipefail

CLUSTER=$(kubectl cluster-info | fgrep master | python -c 'import sys; print(sys.stdin.readlines()[0].split()[5].split(":")[1].lstrip("/"))')

echo ${CLUSTER}
