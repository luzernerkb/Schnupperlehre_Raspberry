#!/bin/sh

echo Benenne nun den Rasperry pi, so wie du ihn willst.;
read Hostname
sudo hostname $Hostname;

sudo mv /home/pi/Documents/Schnuppertag_Files/Scroll_Phat_IP /etc/init.d/;




