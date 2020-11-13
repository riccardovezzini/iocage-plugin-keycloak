#!/bin/sh

sysrc sshd_enable="YES"
echo "topogigio" | pw add user -n sshuser -c Keycloak -s /bin/sh -m -h 0
pw usermod sshuser -G wheel

pw add user -n keycloak -c Keycloak -s /bin/sh -m
