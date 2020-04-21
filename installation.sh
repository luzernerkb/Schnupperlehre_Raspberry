#!/bin/sh

cd Documents;

git clone https://github.com/luzernerkb/Schnupperlehre_Raspberry.git Schnupperlehre

echo Benenne nun den Rasperry pi, so wie du ihn willst.;
read Hostname
sudo hostname $Hostname;

sudo mv /home/pi/Documents/Schnuppertag_Files/Scroll_Phat_IP /etc/init.d/;




