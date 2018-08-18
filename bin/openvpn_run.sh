#!/bin/bash

cp /mnt/files_openvpn/* /etc/openvpn/

mkdir -p /dev/net
if [ ! -c /dev/net/tun ]; then
    mknod /dev/net/tun c 10 200
fi

pushd /etc/openvpn/
openvpn --config /etc/openvpn/server.conf
