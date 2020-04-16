#!/bin/bash
set -e

su -lc /bin/bash $VAGRANT_USER <<EOF
sudo pip install robotframework==3.1.2
sudo pip install robotframework-seleniumlibrary==4.3.0
wget https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux32.tar.gz
tar -xvzf geckodriver-v0.21.0-linux32.tar.gz
chmod +x geckodriver
sudo mv geckodriver /usr/local/bin/
sudo pip install robotframework-ride
EOF

aptitude -y install firefox
