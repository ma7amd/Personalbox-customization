#!/bin/bash

# Moving to Downloads folder
cd ~/Downloads
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
sudo apt -y install vim wget curl git gimp gnumeric gparted gparted-common qbittorrent thunderbird remmina terminator tmux dconf-editor filezilla flameshot megasync 
#sudo apt -y install gconf-service gconf-service-backend gconf2-common gcr git git-man gnome-keyring gnome-keyring-pkcs11 gvfs-bin libappindicator1 libc++1 libc++1-10 libc++abi1-10 libdbusmenu-gtk4 liberror-perl libgconf-2-4 libgcr-ui-3-1 libpam-gnome-keyring libqt5webkit5 pinentry-gnome3 sasm git-daemon-run git-daemon-sysvinit git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn indicator-application clang pinentry-doc intel2gas
sudo apt install -f -y

# Installing Browsers:
sudo apt -y install google-chrome-stable
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
sudo snap install libreoffice wps-office wps-office-all-lang-no-internet 

# Installing Youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# Installing the IDEs:
sudo snap install pycharm-community --classic
sudo apt-get install apt-transport-https
sudo apt-get install sublime-text


sudo apt -y install -f

#sudo apt install -y libcurl4-openssl-dev
#sudo apt install -y libssl-dev
#sudo apt install -y jq
#apt install python-requests
#apt install python-dnspython
#apt install python-argparse
#sudo apt install -y ruby-full
#sudo apt install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
#sudo apt install -y build-essential libssl-dev libffi-dev python-dev
#sudo apt install -y python-setuptools
#sudo apt install -y libldns-dev
#sudo apt install -y python3-pip
#sudo apt install -y python-pip
#sudo apt install -y python-dnspython
#
#sudo apt install -y rename
#sudo apt install egrep
#sudo apt install snap
#sudo apt install snapd
#sudo apt install -y xargs
#sudo snap install amass
#sudo apt install cargo
#
##pip / pip3 install
#pip3 install Pool
#pip3 install requests
#pip3 install codecs
#pip3 install time
#
##install go
#if [[ -z "$GOPATH" ]];then
#echo "It looks like go language is not installed, would you like to install it now"
#PS3="Please select an option : "
#choices=("yes" "no")
#select choice in "${choices[@]}"; do
#        case $choice in
#                yes)
#
#					echo "Installing Golang"
#					wget https://golang.org/dl/go1.15.linux-amd64.tar.gz
#					sudo tar -xvf go1.15.linux-amd64.tar.gz
#					sudo mv go /usr/local
#					export GOROOT=/usr/local/go
#					export GOPATH=$HOME/go
#					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
#					echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
#					echo 'export GOPATH=$HOME/go'	>> ~/.bashrc		
#					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
#					source ~/.bashrc
#					sleep 1
#					break
#					;;
#				no)
#					echo "Please install go and rerun this script"
#					echo "Aborting installation..."
#					exit 1
#					;;
#	esac	
#done
#fi
#
#
##Don't forget to set up AWS credentials!
#echo -e "Don't forget to set up AWS credentials!"
#apt install -y awscli
#echo -e "Don't forget to set up AWS credentials!"
#
#
#
##create a tools folder in ~/
#mkdir ~/tools
#cd ~/tools/
#
##Install shuffledns
#echo -e "Installing shuffledns"
#go get -u -v github.com/projectdiscovery/shuffledns/cmd/shuffledns
#echo -e "Done install shuffledns"
#
##install censys-subdomain-finder
#echo -e "Installing censys-subdomain-finder"
#git clone https://github.com/christophetd/censys-subdomain-finder.git
#cd ~/tools/
#cd censys-subdomain-finder
#pip install -r requirements.txt
#echo -e "Done install censys-subdomain-finder"
#
##install subfinder
#echo -e "Installing subfinder"
#cd ~/tools/
#go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
#echo -e "Done install subfinder"
#
##Install findomain
#echo -e "Installing findomain"
#git clone https://github.com/Edu4rdSHL/findomain.git -b develop
#cd ~/tools/
#cd findomain
#cargo build --release
#cp findomain /usr/bin/
#echo -e "Done install findomain"
#
##SubDomainizer 
#echo -e "Installing SubDomainizer"
#cd ~/tools/
#git clone https://github.com/nsonaniya2010/SubDomainizer.git
#cd SubDomainizer
#pip3 install -r requirements.txt
#echo -e "Done Install SubDomainizer"
#
#
##CTFR  
#echo -e "Installing CTFR"
#cd ~/tools/
#git clone https://github.com/UnaPibaGeek/ctfr.git
#cd ctfr
#pip3 install -r requirements.txt
#echo -e "Done Install ctfr"
#
#
##TitleXtractor
#cd ~/tools/
#echo -e "Installing TitleXtractor"
#go get -u github.com/dellalibera/titlextractor/
#echo -e "Done Install TitleXtractor"
#
##Subdomain Takeover Scan via subzy
#cd ~/tools/
#echo -e "Installing Subzy"
#go get -u -v github.com/lukasikic/subzy
#echo -e "Done Install Subzy"
#
##dnsprobe
#echo -e "Installing dnsprobe"
#cd ~/tools/
#go get -u -v github.com/projectdiscovery/dnsprobe
#echo -e "Done Install dnsprobe"
#
##nuclei
#echo -e "Installing nuclei"
#cd ~/tools/
#go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
#echo -e "Done Install nuclei"
#
##cookieless
#echo -e "Installing cookieless"
#cd ~/tools/
#go get -u github.com/RealLinkers/cookieless
#echo -e "Done Install cookieless"
#
##XSStrike
#echo -e "Installing XSStrike"
#cd ~/tools/
#git clone https://github.com/s0md3v/XSStrike
#cd XSStrike
#pip3 install -r requirements.txt
#echo -e "Done Install XSStrike"
#
#echo -e "Installing hakrawler"
#cd ~/tools/
#go get github.com/hakluke/hakrawler
#echo -e "Done Install hakrawler"
#
#echo -e "Installing waybackurls"
#cd ~/tools/
#go get -u github.com/tomnomnom/waybackurls
#echo -e "Done Install waybackurls"
#
#echo -e "Installing ssrf-finder"
#cd ~/tools/
#go get -u github.com/random-robbie/ssrf-finder
#echo -e "Done Install ssrf-finder"
#
#echo -e "Installing qsreplace"
#cd ~/tools/
#go get -u github.com/tomnomnom/qsreplace
#echo -e "Done Install qsreplace"
#
#echo -e "Installing gau"
#cd ~/tools/
#go get -u -v github.com/lc/gau
#echo -e "Done Install gau"
#
##CMSmap Vulnerabilities Scanning WordPress, Joomla, Drupal and Moodle
#echo -e "Installing CMSmap"
#cd ~/tools/
#git clone https://github.com/Dionach/CMSmap.git
#cd CMSmap
#pip3 install .
#echo -e "Done Install CMSmap"
#
##Testing for Default HTTP Login.
#echo -e "Installing default-http-login-hunter"
#cd ~/tools/
#git clone https://github.com/InfosecMatter/default-http-login-hunter
#echo -e "Done Install default-http-login-hunter"
#
#echo -e "Installing Workflow-Bug-Bounty xElkomy"
#cd ~/tools/
#git clone https://github.com/xElkomy/Workflow-Bug-Bounty
#echo -e "Done Install Workflow-Bug-Bounty xElkomy"
#
#echo -e "Installing KXSS"
#cd ~/tools/
#go get -u github.com/tomnomnom/hacks/kxss
#echo -e "Done Install KXSS"
#
##install aquatone
#echo "Installing Aquatone"
#cd ~/tools/
#go get github.com/michenriksen/aquatone
#echo -e "Done Install Aquatone"
#
##install chromium
#echo -e "Installing Chromium"
#sudo snap install chromium
#echo -e "Done install chromium"
#
#echo -e "installing JSParser"
#git clone https://github.com/nahamsec/JSParser.git
#cd JSParser*
#sudo python setup.py install
#cd ~/tools/
#echo -e "Done install JSParser"
#
#echo -e "installing Sublist3r"
#git clone https://github.com/aboul3la/Sublist3r.git
#cd Sublist3r*
#pip install -r requirements.txt
#cd ~/tools/
#echo -e "Done install Sublist3r"
#
#
#echo -e "installing teh_s3_bucketeers"
#git clone https://github.com/tomdev/teh_s3_bucketeers.git
#cd ~/tools/
#echo -e "Done install teh_s3_bucketeers"
#
#
#echo -e "installing wpscan"
#git clone https://github.com/wpscanteam/wpscan.git
#cd wpscan*
#sudo gem install bundler && bundle install --without test
#cd ~/tools/
#echo -e "Done install wpscan"
#
#echo -e "installing dirsearch"
#git clone https://github.com/maurosoria/dirsearch.git
#cd ~/tools/
#echo -e "Done install dirsearch"
#
#echo -e "installing sqlmap"
#git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
#cd ~/tools/
#echo -e "Done install sqlmap"
#
#echo -e "installing knock.py"
#git clone https://github.com/guelfoweb/knock.git
#cd ~/tools/
#echo -e "Done install knock.py"
#
#echo -e "installing nmap"
#sudo apt install -y nmap
#echo -e "Done install nmap"
#
#echo -e "installing massdns"
#git clone https://github.com/blechschmidt/massdns.git
#cd ~/tools/massdns
#make
#cd ~/tools/
#echo -e "Done install massdns"
#
#echo -e "installing asnlookup"
#git clone https://github.com/yassineaboukir/asnlookup.git
#cd ~/tools/asnlookup
#pip install -r requirements.txt
#cd ~/tools/
#echo -e "Done install asnlookup"
#
#echo -e "installing httprobe"
#go get -u github.com/tomnomnom/httprobe 
#echo -e "Done install httprobe"
#
#echo -e "installing unfurl"
#go get -u github.com/tomnomnom/unfurl 
#echo -e "Done install unfurl"
#
#
#echo -e "installing crtndstry"
#git clone https://github.com/nahamsec/crtndstry.git
#echo -e "Done install crtndstry"
#
#echo -e "downloading Seclists"
#cd ~/tools/
#git clone https://github.com/danielmiessler/SecLists.git
#cd ~/tools/SecLists/Discovery/DNS/
###THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
#cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
#cd ~/tools/
#echo -e "Done install SecLists"
#
#echo -e "installing httpx"
#go get -u github.com/projectdiscovery/httpx
#cd ~/tools/
#echo -e "Done install httpx"
#
#echo -e "installing aem-hacker"
#git clone https://github.com/0ang3el/aem-hacker.git
#cd ~/tools/
#echo -e "Done install aem-hacker"
#
#echo -e "installing Goohak"
#git clone https://github.com/1N3/Goohak.git
#cd ~/tools/
#echo -e "Done install Goohak"
#
#echo -e "installing jexboss"
#git clone https://github.com/joaomatosf/jexboss.git ~/tools/jexboss
#cd ~/tools/jexboss
#pip3 install -r requires.txt
#cd ~/tools/
#echo -e "Done install jexboss"
#
#echo -e "installing scant3r"
#git clone https://github.com/knassar702/scant3r ~/tools/scant3r
#cd ~/tools/scant3r
#pip3 install -r requirements.txt
#cd ~/tools/
#echo -e "Done install scant3r"
#
#echo -e "installing crlfuzz"
#git clone https://github.com/dwisiswant0/crlfuzz.git ~/tools/crlfuzz
#cd ~/tools/crlfuzz/cmd/crlfuzz
#go build .
#mv crlfuzz /usr/local/bin
#cd ~/tools/
#echo -e "Done install crlfuzz"
#
#echo -e "installing lazys3"
#git clone https://github.com/nahamsec/lazys3.git ~/tools/lazys3
#cd ~/tools/
#echo -e "Done install lazys3"
#
#echo -e "installing flumberboozle"
#git clone https://github.com/fellchase/flumberboozle.git ~/tools/flumberboozle
#cd ~/tools/
#echo -e "Done install flumberboozle"
#
#echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"
#ls -la
#echo -e "One last time: don't forget to set up AWS credentials in ~/.aws/!"
#
#
#
#cd ~/Downloads/App/
##rm -rf *.*
