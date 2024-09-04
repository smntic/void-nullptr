#!/bin/bash

# Virtualization (guest)
if [[ "$1" == "--vm" ]]; then
    ln -s /etc/sv/spice-vdagentd /var/service
fi

# Communication
ln -s /etc/sv/dbus /var/service
ln -s /etc/sv/elogind /var/service

# Logging
ln -s /etc/sv/socklog-unix /var/service

# Virtualization (host), probably should not be enabled on guest
if ! [[ "$1" == "--vm" ]]; then
    ln -s /etc/sv/libvirtd /var/service
    ln -s /etc/sv/virtlockd /var/service
    ln -s /etc/sv/virtlogd /var/service
    ln -s /etc/sv/polkitd /var/service
fi

# Network
ln -s /etc/sv/NetworkManager /var/service
rm /var/service/dhcpcd
rm /var/service/wpa_supplicant

# ACPI
rm /var/service/acpid

# Cronie
ln -s /etc/sv/cronie /var/service

# Chrony
ln -s /etc/sv/chronyd /var/service

# Docker
ln -s /etc/sv/docker /var/service

# Bluetooth
ln -s /etc/sv/bluetoothd /var/service

