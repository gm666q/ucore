#!/bin/sh

set -ouex pipefail

# NFS
dnf5 swap -y nfs-utils-coreos nfs-utils

# FreeIPA Client
dnf5 install -y freeipa-client realmd

# PCP
dnf5 install -y pcp-zeroconf

# Storage Utils
dnf5 install -y duperemove hdparm smartctl

# Tools
dnf5 install -y igt-gpu-tools pciutils usbutils zsh

# Tuned
#dnf5 install -y tuned-utils tuned-utils-systemtap
