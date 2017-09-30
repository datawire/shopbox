#!/usr/bin/env bash
set -euo pipefail

if [ $# != 1 ]; then
    echo "usage: port.sh <service>"
    exit 1
fi

PORT=$(kubectl get services "$1" -ojsonpath={.spec.ports[0].nodePort})

echo ${PORT}
