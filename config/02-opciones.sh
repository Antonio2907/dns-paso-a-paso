#!/usr/bin/env bash
set -e

cp /vagrant/files/named /etc/default/named
cp /vagrant/files/named.conf.options /etc/bind/named.conf.options

named-checkconf /etc/bind/named.conf.options
systemctl restart named