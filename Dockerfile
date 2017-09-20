FROM ubuntu:zesty-20170915
MAINTAINER Datawire <dev@datawire.io>
LABEL PROJECT_REPO_URL         = "git@github.com:datawire/shopbox.git" \
      PROJECT_REPO_BROWSER_URL = "https://github.com/datawire/shopbox" \
      DESCRIPTION              = "Datawire Shopbox - Workshop Environment In Box" \
      VENDOR                   = "Datawire, Inc." \
      VENDOR_URL               = "https://datawire.io/"

# SOFTWARE VERSIONS
ENV AMBASSADOR_VERSION "0.11"
ENV FORGE_VERSION      "0.3"
ENV KUBECTL_VERSION    "1.7.6"
ENV KUBERNAUT_VERSION  "0.1.37"
      
# CONFIGURATION
ARG SCOUT_DISABLE=1
ENV SCOUT_DISABLE ${SCOUT_DISABLE}

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

COPY . .

RUN ./system_install.sh && \
    ./install.sh && \
    ./sanity.sh && \
    ./cleanup.sh

RUN adduser --shell /bin/bash shopbox && \
    usermod --append --groups sudo,docker shopbox

USER shopbox
WORKDIR /workspace

ENTRYPOINT "/bin/bash"
