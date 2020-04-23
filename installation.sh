#!/bin/sh

cd Documents;

pwd;

git clone https://github.com/luzernerkb/Schnupperlehre_Raspberry.git Schnupperlehre

ExecStart=/usr/bin/python /home/pi/myscript.py > /home/pi/myscript.log 2>&1;




