#!/usr/bin/env bash

echo "=== 1. Comprobación de sintaxis de ficheros ==="
named-checkconf /etc/bind/named.conf.options && echo "[OK] named.conf.options"
named-checkzone antonio.test /var/lib/bind/antonio.test.dns && echo "[OK] Zona directa"
named-checkzone 56.168.192.in-addr.arpa /var/lib/bind/antonio.test.rev && echo "[OK] Zona inversa"

echo "=== 2. Comprobación de resolución ==="
dig @localhost web.antonio.test CNAME +short
dig @localhost antonio.test TXT +short
dig @localhost -x 192.168.56.10 +short