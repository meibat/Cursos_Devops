#!/bin/bash

echo "Atualizando Servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copiando arquivos para /var/www/html/..."
cp -R * /var/www/html/
