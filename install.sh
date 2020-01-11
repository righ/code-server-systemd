#!/usr/bin/env bash

if (( $EUID != 0 )); then
  echo "Please run as root"
  exit 1
fi

if [ ! -f "code-server" ]; then
  ./download.sh
fi

if [ "$CODE_USER" == "" ]; then
  CODE_USER="root"
fi

if [ "$CODE_OPTIONS" == "" ]; then
  CODE_OPTIONS="--auth none"
fi

CODE_USER=$CODE_USER CODE_OPTIONS=$CODE_OPTIONS MAINPID='$MAINPID' envsubst < code-server.service > /lib/systemd/system/code-server.service
systemctl stop code-server.service 2> /dev/null
sleep 5
pkill code-server 2> /dev/null

mkdir -p /opt/code-server
cp code-server /opt/code-server

systemctl enable code-server.service 2> /dev/null
systemctl start code-server.service

