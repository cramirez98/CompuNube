#!/bin/bash
echo "Configurando jupyter notebook"
apt-get update
apt-get install python3-pip -q -y
pip3 install markupsafe==2.0.1
pip3 install jupyter -q