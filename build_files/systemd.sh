#!/bin/sh

set -ouex pipefail

systemctl enable cockpit.service
systemctl enable netavark-firewalld-reload.service
#systemctl enable tuned.service

# System Podman
systemctl enable podman.socket
systemctl enable podman-auto-update.timer
systemctl enable podman-clean-transient.service
#systemctl enable podman-restart.service

# User Podman
#systemctl --global enable podman.socket
systemctl --global enable podman-auto-update.timer
systemctl --global enable podman-clean-transient.service
#systemctl --global enable podman-restart.service
