#!/bin/env bash

# Atualizar servidor
apt update && apt upgrade -y

apt install apache2 unzip

pushd /tmp || exit 1

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cp -r ./main/* /var/www/html/

popd || exit 1