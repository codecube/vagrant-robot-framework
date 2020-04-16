#!/bin/bash
set -e

LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get --force-yes -y install python3.6 python-pip python-wxgtk2.8 gedit nautilus-admin

pip install virtualenv
su -lc /bin/bash $VAGRANT_USER <<EOF
set -e
virtualenv --prompt="(RF)" \$HOME/.local_python
EOF

cat > /etc/profile.d/virtualenv.sh <<EOF
#!/bin/bash

if [[ -f \$HOME/.local_python/bin/activate ]]; then
    source \$HOME/.local_python/bin/activate
fi
EOF
