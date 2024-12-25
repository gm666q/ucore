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
  --install realmd \
  --install zsh