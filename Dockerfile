FROM project42/s6-ubuntu:20.04
MAINTAINER Jordan Clark mail@jordanclark.us

COPY container-files /

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y openssh-server openssh-client sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /run/sshd

