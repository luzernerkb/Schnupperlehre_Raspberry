#!/bin/sh

printf "Gib neuen Hostnamen ein: "
read new_Hostname
sudo hostname $new_Hostname
echo "Neuer Hostnamen: " $HOSTNAME