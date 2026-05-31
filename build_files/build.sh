#!/bin/bash

set -ouex pipefail

/ctx/packages.sh
/ctx/cockpit.sh
/ctx/systemd.sh
