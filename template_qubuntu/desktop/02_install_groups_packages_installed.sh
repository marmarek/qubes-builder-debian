#!/bin/bash -e
# vim: set ts=4 sw=4 sts=4 et :

source "${SCRIPTSDIR}/vars.sh"
source "${SCRIPTSDIR}/distribution.sh"


#### '----------------------------------------------------------------------
info ' Installing Ubuntu-desktop'
#### '----------------------------------------------------------------------
packages="$(chroot_cmd tasksel --new-install --task-packages ubuntu-desktop)"
aptInstall ${packages}
