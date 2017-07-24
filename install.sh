#!/bin/bash
dir=`pwd`
#dconf-cli
sudo apt-get install -y dconf-cli
#tmux
sudo apt-get install -y tmux
#tree
sudo apt-get install -y tree
# zsh
sudo apt-get install -y zsh
sudo chsh -s /bin/zsh
# git
sudo apt-get install -y git
git config --global pack.windowMemory "1024m" 
git config --global pack.packSizeLimit "1024m"
git config --global pack.threads "4"
# vim
sudo apt-get install -y vim-nox
# derek wyatt vim-config
git clone https://github.com/derekwyatt/vim-config.git ~/.vim
cp `basename $0`/vim/vimrc ~/.vimrc
# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# unzip
sudo apt-get install -y unzip
# curl
sudo apt-get install -y curl
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd /tmp
# setting and maven java options
sudo echo '_JAVA_OPTS="-Xmx8192m -XX:MaxPermSize=1024m -Djava.awt.headless=true"' >> /etc/environment
sudo echo 'MAVEN_OPTS="-Xms1024m -Xmx8192m -XX:PermSize=1024m"' >> /etc/environment
# python 2.7
wget https://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11-py2.7.egg#md5=fe1f997bc722265116870bc7919059ea -O /tmp/setuptools-0.6c11-py2.7.egg
sudo sh /tmp/setuptools-0.6c11-py2.7.egg
sudo apt-get install -y python-dev
sudo apt-get install -y python-setuptools
# g++
sudo apt-get install -y g++
# rpm
sudo apt-get install -y rpm
# sdk man
curl -s "https://get.sdkman.io" | bash
#redshift
sudo apt-get install -y redshift redshift-gtk
# gnome-terminal-color-solarize
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git /tmp/gnome-terminal-color-solarized
cd /tmp/gnome-terminal-color-solarized
sudo ./install.sh
# silver searcher
sudo apt-get install -y silversearcher-ag
# docker
curl -fsSL https://get.docker.com/ | sh
#conky
sudo apt-get install -y conky conky-all lm-sensors hddtemp
# ubuntu theme
# arc-theme dark
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install -y arc-theme
# mocka icons
sudo add-apt-repository ppa:moka/daily
sudo apt-get update
sudo apt-get install -y moka-icon-theme
# arc-icon
git clone https://github.com/horst3180/arc-icon-theme --depth 1
sudo cp -a arc-icon-theme/Arc /usr/share/icons
# unity tweak tool
sudo apt-get install -y unity-tweak-tool
# national geographic wallpaper
sudo add-apt-repository ppa:atareao/atareao 
sudo apt-get update
sudo apt-get install -y national-geographic-wallpaper
# fingerprint
sudo add-apt-repository ppa:fingerprint/fingerprint-gui
sudo apt update
sudo apt install -y libbsapi policykit-1-fingerprint-gui fingerprint-gui
# compiz config manager
sudo apt install -y compizconfig-settings-manager
# dnscrypt-proxy
sudo apt-get install -y dnscrypt-proxy


cd $dir
echo "To complete the instaltion"
echo "Open a new terminal window and run 'source "$HOME/.sdkman/bin/sdkman-init.sh"'"
echo "Open vin and run :VundleInstall"

