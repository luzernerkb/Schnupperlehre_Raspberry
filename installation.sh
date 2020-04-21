#!/bin/sh

cd Documents;

pwd;

git clone https://github.com/luzernerkb/Schnupperlehre_Raspberry.git Schnupperlehre

echo Benenne nun den Rasperry pi, so wie du ihn willst.;
read Hostname
sudo hostname $Hostname;
ls;
sudo mv /home/pi/Documents/Schnupperlehre/Auto_Start.sh /etc/init.d/;




