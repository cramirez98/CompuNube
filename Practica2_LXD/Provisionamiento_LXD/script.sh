echo "Configurando LXD"
apt-get update
apt-get install lxd -y -q
newgrp lxd
lxd init --auto
echo "Lanzando contenedor de ubuntu"
sudo lxc launch ubuntu:20.04 paginaweb
echo "Configurando Servidor de Apache"
lxc exec paginaweb -- bash -c "sudo apt-get update && sudo apt-get install apache2 -y && sudo systemctl enable apache2 && sudo systemctl start apache2"
lxc file push /vagrant/index.html paginaweb/var/www/html/