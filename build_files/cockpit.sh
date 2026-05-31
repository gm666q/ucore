#!/usr/bin/bash

set -ouex pipefail

CZM_TGZ="$(/ctx/github-pkgs.sh download cockpit-zfs-manager)"

mkdir -p /tmp/cockpit-zfs-manager
tar -xf "${CZM_TGZ}" -C /tmp/cockpit-zfs-manager --strip-components=1
mv /tmp/cockpit-zfs-manager/polkit-1/actions/* /usr/share/polkit-1/actions/
mv /tmp/cockpit-zfs-manager/polkit-1/rules.d/* /usr/share/polkit-1/rules.d/
mv /tmp/cockpit-zfs-manager/zfs /usr/share/cockpit

FONT_FIX_SCRIPT="$(/ctx/github-pkgs.sh download cockpit-font-fix)"
chmod +x "${FONT_FIX_SCRIPT}"
"${FONT_FIX_SCRIPT}"

rm -rf /tmp/cockpit-zfs-manager
rm -f "${CZM_TGZ}" "${FONT_FIX_SCRIPT}"
