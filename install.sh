#!/bin/bash

# Moving to Downloads folder
cd /home/$(whoami)/Downloads
mkdir App
cd App

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
sudo apt dist-upgrade -y

sudo apt install snap
sudo apt install snapd

# Unintsalling Transmission
sudo apt purge transmission-gtk

# Installing Java
sudo apt -y install default-jre default-jre-headless

# Installing VmWare
sudo apt -y install gcc make perl linux-headers-$(uname -r) dkms
sudo apt install -f
wget http://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-15.5.6-16341506.x86_64.bundle
chmod +x VMware-Workstation-Full-15.5.6-16341506.x86_64.bundle
sudo ./VMware-Workstation-Full-15.5.6-16341506.x86_64.bundle


# Installing Virtualbox
sudo apt -y install virtualbox-6.1

# Installing bunch of Applications 
sudo apt -y install vim wget curl git gimp gnumeric gparted gparted-common qbittorrent thunderbird remmina terminator tmux dconf-editor filezilla flameshot
#sudo apt -y install gconf-service gconf-service-backend gconf2-common gcr git git-man gnome-keyring gnome-keyring-pkcs11 gvfs-bin libappindicator1 libc++1 libc++1-10 libc++abi1-10 libdbusmenu-gtk4 liberror-perl libgconf-2-4 libgcr-ui-3-1 libpam-gnome-keyring libqt5webkit5 pinentry-gnome3 sasm git-daemon-run git-daemon-sysvinit git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn indicator-application clang pinentry-doc intel2gas
sudo apt install -f -y

# Installing Browsers:
sudo snap install chromium

# Installing Multimedia applications:
sudo apt -y install vlc mpv audacity handbrake smplayer soundconverter brasero clementine
sudo apt install spotify

# Installing Chat applications:
sudo apt -y install telegram-desktop
sudo snap install zoom-client teams-for-linux

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
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

chmod +x *.deb
sudo dpkg -i *.deb
sudo apt -y install -f

# Installing Office Applications:
sudo snap install libreoffice wps-office-all-lang-no-internet 

# Installing Youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# Installing the IDEs:
sudo snap install pycharm-community --classic
sudo apt-get install apt-transport-https
#sudo apt-get install sublime-text


sudo apt -y install -f
