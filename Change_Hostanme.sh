#!/bin/sh

echo Gibt den gewünschten Hostnamen ein;

read new_Hostname;

sudo hostname $new_Hostname;
