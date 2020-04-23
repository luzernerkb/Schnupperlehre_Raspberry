#!/bin/sh

cd Documents;

pwd;

git clone https://github.com/luzernerkb/Schnupperlehre_Raspberry.git Schnupperlehre;

sudo mv /home/pi/Documents/Schnupperlehre/myscript.service /lib/systemd/system/;

ExecStart=/usr/bin/python /home/pi/myscript.py > /home/pi/myscript.log 2>&1;

sudo chmod 644 /lib/systemd/system/myscript.service

sudo systemctl daemon-reload;
sudo systemctl enable myscript.service;
sudo systemctl status myscript.service

cd /;

cd /home/pi/Documents/Schnupperlehre;

bash Change_Hostanme.sh;

sudo reboot;

