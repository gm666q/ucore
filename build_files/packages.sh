#!/bin/sh

set -ouex pipefail

# NFS
dnf5 swap -y nfs-utils-coreos nfs-utils

# Cockpit Applications
dnf5 install -y cockpit-files cockpit-ostree cockpit-storaged

# FreeIPA Client
dnf5 install -y freeipa-client realmd

# PCP
dnf5 install -y pcp-zeroconf

# Storage Utils
dnf5 install -y duperemove hdparm

# Tools
dnf5 install -y zsh

# Tuned
dnf5 install -y tuned tuned-profiles-atomic tuned-utils tuned-utils-systemtap
