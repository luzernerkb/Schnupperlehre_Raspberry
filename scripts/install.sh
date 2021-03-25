#!/bin/sh

REPO_PATH=~/Documents/Schnupperlehre

apt install python3 -y
curl https://get.pimoroni.com/scrollphathd | bash
git clone --depth 1 https://github.com/luzernerkb/Schnupperlehre_Raspberry.git $REPO_PATH

mv $REPO_PATH/ipscript.service /lib/systemd/system/
mv $REPO_PATH/scripts/ip.py /usr/local/bin

ExecStart=/usr/bin/python /usr/local/bin/ip.py > ~/ipscript.log 2>&1

chmod 644 /lib/systemd/system/ipscript.service

systemctl daemon-reload
systemctl enable ipscript.service

bash $REPO_PATH/Change_Hostanme.sh
reboot