#!/usr/bin/env bash

# @link https://posit.co/download/rstudio-server

apt-get install -y nmap

apt-get install -y gdebi-core

wget https://download2.rstudio.org/server/jammy/amd64/rstudio-server-2026.04.0-526-amd64.deb

gdebi --non-interactive rstudio-server-2026.04.0-526-amd64.deb

# TODO: confirm / fix the "auto-startness" of the 'rstudio-server' service after
# installing the above DEB package (it appears not to)

# create log file
touch /var/log/rstudio/rstudio-server/rserver.log
chmod 777 /var/log/rstudio/rstudio-server/rserver.log

# set to 'debug' level of logging
echo "[*]
log-level=debug" > /etc/rstudio/logging.conf

# set to webserve on port 80
echo "www-port=80" > /etc/rstudio/rserver.conf
