#!/usr/bin/env bash
   set -e

   cp /vagrant/files/named.conf.local /etc/bind/named.conf.local
   cp /vagrant/files/antonio.test.dns /var/lib/bind/antonio.test.dns
   cp /vagrant/files/antonio.test.rev /var/lib/bind/antonio.test.rev
   
   named-checkconf
   named-checkzone antonio.test /var/lib/bind/antonio.test.dns
   named-checkzone 56.168.192.in-addr.arpa /var/lib/bind/antonio.test.rev

   systemctl restart named