#!/bin/sh

sed \
    -e "s|HOST|${OUTGOING_HOST}|g" \
    -i /etc/stunnel/stunnel.conf

sed \
    -e "s|PORT|${OUTGOING_PORT}|g" \
    -i /etc/stunnel/stunnel.conf

echo "Reconfigured stunnel.conf"
echo "Starting service"
/etc/init.d/stunnel4 start && tail -F /var/log/stunnel4/stunnel.log