#!/usr/bin/env bash
set -euxo pipefail

curl -L \
     --output /bin/kubectl \
     https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl
     
curl -L \
     --output /bin/forge \
     https://s3.amazonaws.com/datawire-static-files/forge/${FORGE_VERSION}/forge
     
curl -L \
     --output /bin/kubernaut \
     https://s3.amazonaws.com/datawire-static-files/kubernaut/${KUBERNAUT_VERSION}/kubernaut

chmod a+x \
    /bin/kubectl \
    /bin/kubernaut \
    /bin/forge
