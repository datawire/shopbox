#!/usr/bin/env bash
set -euxo pipefail

curl -L \
     --output /bin/forge \
     https://s3.amazonaws.com/datawire-static-files/forge/${FORGE_VERSION}/forge

chmod a+x \
    /bin/forge
