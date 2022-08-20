#!/bin/bash

echo "Atualizando serivor..."

apt-get update -y
apt-get upgrade -y

echo "Instalando o Apache..."

apt-get install apache2 -y

echo "Instalando Unzip..."

apt-get install unzip -y

echo "Baixando e compiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

