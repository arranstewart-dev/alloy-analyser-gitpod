
FROM gitpod/workspace-full-vnc@sha256:8697bf95299f0a2da49e3a9a1d44e87e90517d7180013e34bc4d9927c0533cb3

SHELL ["/bin/bash", "-c"]

# adding openjdk seems to be required for all
# java GUI libraries to get installed -- else
# this error occurs:
#   Unable to start the graphical environment
# (see https://jessitron.com/2020/04/17/run-alloy-on-windows-in-docker/)

USER root
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        apt-transport-https       \
        ca-certificates           \
        curl                      \
        gnupg                     \
        git                       \
        openjdk-11-jdk            \
        openjdk-11-jre            \
        wget                      \
        x11-xserver-utils         \
        xterm                     \
        xz-utils                  \
        zip                       \
    && \
    apt-get clean && \
    rm -rf /var/cache/apt/* && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

ARG ALLOY_VERSION=6.0.0
ARG ALLOY_URL=https://github.com/AlloyTools/org.alloytools.alloy/releases/download/v${ALLOY_VERSION}/org.alloytools.alloy.dist.jar 

RUN \
    mkdir /opt/alloy && \
    cd /opt/alloy && \
    wget ${ALLOY_URL}

USER gitpod

RUN \
  mkdir -p $HOME/.local/bin && \
  printf '\nPATH=$HOME/.local/bin:$PATH\n' | \
      tee -a /home/gitpod/.bashrc

