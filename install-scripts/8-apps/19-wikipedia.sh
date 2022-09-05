#!/bin/bash -e

apt-get -y install libqt5webenginecore5 libqt5webenginewidgets5

if [ $LMARCH == 'arm64' ]; then
  wget https://github.com/bareboat-necessities/lysmarine_gen/releases/download/vTest/kiwix_0.0.0_arm64.deb
  dpkg -i kiwix_*.deb
  rm kiwix_*.deb
fi