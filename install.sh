#!/bin/bash

# Moving to Downloads folder
cd ~/Downloads
mkdir App
cd App

#su -

# Adding Secure Keys and updating APT lists
sudo wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Virtualbox
echo 'deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian focal contrib' | sudo tee /etc/apt/sources.list.d/virtualbox.list
# Spotify
sudo curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
sudo curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
#exit

# Updating the whole system
sudo apt update
sudo apt upgrade -y

# Unintsalling Transmission
sudo apt purge transmission-gtk

# Installing Java
sudo apt -y install default-jre default-jre-headless

# Installing bunch of Applications 
sudo apt -y install vim wget curl git imp gnumeric gparted gparted-common qbittorrent thunderbird remmina terminator tmux dconf-editor filezilla flameshot megasync 
sudo apt install -f

# Installing VmWare
sudo apt -y install gcc make perl linux-headers-$(uname -r) dkms
wget http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-15.5.6-16341506.x86_64.bundle
chmod +x VMware-Workstation-Full-15.5.6-16341506.x86_64.bundle
sudo ./VMware-Workstation-Full-15.5.6-16341506.x86_64.bundle

# Installing Virtualbox
sudo apt -y install virtualbox-6.1
sudo apt install -f

# Installing Browsers:
sudo apt -y install google-chrome-stable 
sudo snap install chromium

# Installing Multimedia applications:
sudo apt -y install vlc mpv audacity handbrake smplayer soundconverter brasero clementine
#Spotify

# Installing Chat applications:
sudo apt -y install zoom telegram-desktop teams
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.8.0-amd64.deb
wget https://go.skype.com/skypeforlinux-64.deb
wget https://dl.discordapp.net/apps/linux/0.0.11/discord-0.0.11.deb
wget https://www.realvnc.com/download/file/vnc.files/VNC-Server-6.7.2-Linux-x64.deb
wget https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.20.529-Linux-x64.deb
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
wget https://download.opensuse.org/repositories/home:/Dman95/xUbuntu_19.10/amd64/sasm_3.11.1_amd64.deb
wget https://atom-installer.github.com/v1.50.0/atom-amd64.deb
wget https://az764295.vo.msecnd.net/stable/a0479759d6e9ea56afa657e454193f72aef85bd0/code_1.48.2-1598353430_amd64.deb
wget https://download3.operacdn.com/pub/opera/desktop/70.0.3728.178/linux/opera-stable_70.0.3728.178_amd64.deb

chmod +x *.deb
sudo dpkg -i *.deb

# Installing Office Applications:
sudo apt -y install libreoffice-gtk3 wps-office
sudo apt install -f

# Installing Youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# Installing the IDEs:
sudo snap install pycharm-community --classic
sudo apt-get install apt-transport-https
sudo apt-get install sublime-text
