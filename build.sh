#!/bin/bash

set -ouex pipefail

/tmp/build_files/cockpit-zfs.sh
/tmp/build_files/packages.sh
/tmp/build_files/systemd.sh
