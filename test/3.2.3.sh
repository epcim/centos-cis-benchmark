#!/bin/sh
# ** AUTO GENERATED **

# 3.2.3 - Ensure secure ICMP redirects are not accepted (Scored)

sysctl net.ipv4.conf.all.secure_redirects | grep -E "net.ipv4.conf.all.secure_redirects = 0" || exit $?

grep "net.ipv4.conf.all.secure_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.secure_redirects = 0" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net.ipv4.conf.all.secure_redirects" /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.secure_redirects = 0" || exit $?
fi

sysctl net.ipv4.conf.default.secure_redirects | grep -E "net.ipv4.conf.default.secure_redirects = 0" || exit $?

grep "net.ipv4.conf.default.secure_redirects" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.secure_redirects = 0" || exit $?

if [[ -f /etc/sysctl.d/* ]]; then
        grep "net.ipv4.conf.default.secure_redirects" /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.secure_redirects = 0" || exit $?
fi
