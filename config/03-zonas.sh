#!/usr/bin/env bash
   set -e

   cp /vagrant/files/named.conf.local /etc/bind/named.conf.local
   cp /vagrant/files/antonio.test.dns /var/lib/bind/antonio.test.dns
   cp /vagrant/files/antonio.test.rev /var/lib/bind/antonio.test.rev

   systemctl restart named