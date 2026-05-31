#!/bin/sh

set -ouex pipefail

dnf -y install nfs-utils nfs-client-utils --allowerasing
dnf -y install \
    cockpit-ostree \
    cockpit-storaged \
    duperemove \
    freeipa-client \
    hdparm \
    igt-gpu-tools \
    lm_sensors \
    man-db \
    pciutils \
    pcp-zeroconf \
    realmd \
    smartctl \
    usbutils \
    zsh
