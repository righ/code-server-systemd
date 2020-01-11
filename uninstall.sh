#!/usr/bin/env bash

if (( $EUID != 0 )); then
    echo "Please run as root"
    exit 1
fi

systemctl stop code-server.service
systemctl disable code-server.service
rm /lib/systemd/system/code-server.service
rm -rf /opt/code-server
