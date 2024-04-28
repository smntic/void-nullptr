#!/bin/bash

# Virtualization (guest)
if [[ "$1" == "--vm" ]]; then
    ln -s /etc/sv/spice-vdagentd
fi

# Communication
ln -s /etc/sv/dbus /var/service
ln -s /etc/sv/elogind /var/service

# Logging
ln -s /etc/sv/socklog-unix /var/service

# Virtualization (host), probably should not be enabled on guest
if ![[ "$1" == "--vm" ]]; then
    ln -s /etc/sv/libvirtd /var/service
    ln -s /etc/sv/virtlockd /var/service
    ln -s /etc/sv/virtlogd /var/service
    ln -s /etc/sv/polkitd /var/service
fi

