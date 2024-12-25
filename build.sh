#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


/ctx/build_files/cockpit-zfs.sh
/ctx/build_files/packages.sh
/ctx/build_files/systemd.sh
