#!/bin/bash
# from: http://www.glennklockwood.com/sa/rpi-wifi-bridge.php

IPT=/usr/sbin/iptables
IFACE_LOCAL=enp6s0
IFACE_INET=wlp0s26f7u3
ADDR_INET=192.168.141.122

$IPT -F INPUT
$IPT -F OUTPUT
$IPT -F FORWARD

$IPT -t nat -P PREROUTING ACCEPT
$IPT -t nat -P POSTROUTING ACCEPT
$IPT -t nat -P OUTPUT ACCEPT

$IPT -A FORWARD -p ALL -i $IFACE_LOCAL -j ACCEPT
$IPT -A FORWARD -i $IFACE_INET -m state --state ESTABLISHED,RELATED -j ACCEPT

$IPT -t nat -A POSTROUTING -o $IFACE_INET -j SNAT --to-source $ADDR_INET
