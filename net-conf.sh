#!/bin/bash

read -p "Introduce el nombre del controlador de dominio: " HOSTNAME
read -p "Introduce el nombre del dominio: " DOMAIN

echo "configurando la red..."

sudo mv /etc/network/interfaces /etc/network/interfaces.old && sudo cat interfaces > /etc/network/interfaces

echo "dns-search $HOSTNAME.$DOMAIN" >> /etc/network/interfaces