#!/bin/bash
apt update -y
apt install haproxy -y
systemctl enable haproxy
cat /vagrant/add2config.txt >> /etc/haproxy/haproxy.cfg
systemctl start haproxy