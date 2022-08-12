#!/bin/env bash

# Atualizar servidor
apt update && apt upgrade -y 

apt install -y apache2 unzip && apt autoremove && apt autoclean

pushd /tmp || exit 1

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cp -r ./linux-site-dio-main/* /var/www/html/

popd || exit 1