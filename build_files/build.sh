#!/bin/bash

set -ouex pipefail

/ctx/cockpit-zfs.sh
/ctx/packages.sh
/ctx/systemd.sh
