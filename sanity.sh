#!/usr/bin/env bash
set -euxo pipefail

kubectl version --short --client
kubernaut --version
forge --version
