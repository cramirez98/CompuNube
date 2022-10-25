#!/bin/bash
apt update -y
apt install apache2 -y
systemctl enable apache2
cp $1 /var/www/html/
systemctl start apache2