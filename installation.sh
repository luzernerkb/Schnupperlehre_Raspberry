#!/bin/sh

cd Documents;
pwd;

git clone https://github.com/EriN-B/Rasperry-pi Schnuppertag_Files;


echo Benenne nun den Rasperry pi, so wie du ihn willst.;
read Hostname
sudo hostname $Hostname;

pwd;

cd Schnuppertag_Files;



