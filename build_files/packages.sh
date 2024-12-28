#!/bin/sh

set -ouex pipefail

rpm-ostree override remove \
  nfs-utils-coreos \
  --install cockpit-ostree \
  --install cockpit-storaged \
  --install duperemove \
  --install freeipa-client \
  --install hdparm \
  --install nfs-utils \
  --install pcp-zeroconf \
  --install realmd \
  --install tuned \
  --install tuned-profiles-compat \
  --install tuned-utils \
  --install tuned-utils-systemtap \
  --install zsh
