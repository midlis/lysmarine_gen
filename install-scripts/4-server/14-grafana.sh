#!/bin/bash -e

apt-get clean

apt-get -y -q install grafana

systemctl disable grafana-server

sed -i 's/3000/3080/g' /etc/grafana/grafana.ini
sed -i

apt-get clean

