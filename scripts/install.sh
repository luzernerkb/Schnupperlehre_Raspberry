#!/bin/sh

# DISCLAIMER: DO NOT RUN THIS SCRIPT WITH SUDO

# Setting ENV vars
REPO_PATH=~/Documents/Schnupperlehre
REPO_URL=https://github.com/krissemicolon-forks/Schnupperlehre_Raspberry.git
DEPENDENCIES="python3 nano vim"

# Installing dependencies
sudo apt install $DEPENDENCIES -y
sudo curl https://get.pimoroni.com/scrollphathd | bash
# Cloning the repo
git clone --depth 1 $REPO_URL $REPO_PATH

# Copy ipscript service & script file
sudo cp $REPO_PATH/assets/ipscript.service /lib/systemd/system/
sudo cp $REPO_PATH/scripts/ip.py /usr/local/bin
# Setting Permissions of ipscript service & script file
sudo chmod +x /usr/local/bin/ip.py
sudo chmod 644 /lib/systemd/system/ipscript.service

printf "Activate ipscript on boot? (y/n): "
read -r ACTIVATE_IPSCRIPT
if [ $ACTIVATE_IPSCRIPT = "y" ]; then
    ExecStart=/usr/bin/python /usr/local/bin/ip.py > $REPO_PATH/logs/ipscript.log 2>&1
    sudo systemctl daemon-reload
    sudo systemctl enable ipscript.service
fi

printf "Create symlink to tasks in home directory? (y/n): "
read -r CREATE_SYMLINK
if [ $CREATE_SYMLINK = "y" ]; then
    ln -s -f $REPO_PATH/tasks ~/tasks
fi

printf "Change Hostname? (y/n): "
read -r CHANGE_HOSTNAME
if [ $CHANGE_HOSTNAME = "y" ]; then
    printf "Gib neuen Hostnamen ein: "
    read -r new_Hostname
    sudo hostname $new_Hostname
    echo "Neuer Hostnamen: " $HOSTNAME
fi
