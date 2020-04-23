#!/bin/sh

cd Documents;

pwd;

git clone https://github.com/luzernerkb/Schnupperlehre_Raspberry.git Schnupperlehre

sudo mv /home/pi/Documents/Schnupperlehre/myscript.service /lib/systemd/system/

ExecStart=/usr/bin/python /home/pi/Documents/Schnupperlehre/ip.py > /home/pi/myscript.log 2>&1;

sudo systemctl daemon-reload;
sudo systemctl enable myscript.service;
sudo systemctl status myscript.service


