#!/bin/bash

set -ouex pipefail

/ctx/packages.sh
/ctx/cockpit-zfs.sh
/ctx/systemd.sh
