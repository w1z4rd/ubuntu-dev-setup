#!/bin/bash
dir=`pwd`
#dconf-cli
sudo apt-get install -y dconf-cli
# zsh
sudo apt-get install -y zsh
sudo chsh -s /bin/zsh
# git
sudo apt-get install -y git
# vim
sudo apt-get install -y vim-nox
# derek wyatt vim-config
git clone https://github.com/derekwyatt/vim-config.git ~/.vim
ln ~/.vim/vimrc ~/.vimrc
# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# unzip
sudo apt-get install -y unzip
# curl
sudo apt-get install -y curl
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# java 8
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
# maven 3.3.9
sudo wget http://mirror.reverse.net/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz -O /tmp/apache-maven-3.3.9-bin.tar.gz
cd /tmp
sudo tar -xvzf /tmp/apache-maven-3.3.9-bin.tar.gz
sudo mv /tmp/apache-maven-3.3.9 /usr/local/
sudo update-alternatives --install /usr/bin/mvn mvn /usr/local/apache-maven-3.3.9/bin/mvn 1
# setting and maven java options
sudo echo 'JAVA_HOME="/usr/lib/jvm/java-8-oracle"' >> /etc/environment
sudo echo '_JAVA_OPTS="-Xmx2048m -XX:MaxPermSize=1024m -Djava.awt.headless=true"' >> /etc/environment
sudo echo 'MAVEN_OPTS="-Xms1024m -Xmx4096m -XX:PermSize=1024m"' >> /etc/environment
# python 2.7
wget https://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11-py2.7.egg#md5=fe1f997bc722265116870bc7919059ea -O /tmp/setuptools-0.6c11-py2.7.egg
sudo sh /tmp/setuptools-0.6c11-py2.7.egg
sudo apt-get install -y python-dev
sudo apt-get install -y python-setuptools
# g++
sudo apt-get install -y g++
# rpm
sudo apt-get install -y rpm
# VirtualBox
sudo apt-get install -y VirtualBox
sudo apt-get install -y virtualbox-dkms
# vagrant
sudo apt-get install -y vagrant
# flux
sudo add-apt-repository ppa:kilian/f.lux
sudo sed -s 's/wily/trusty/g' /etc/apt/sources.list.d/kilian-ubuntu-f_lux-wily.list
sudo apt-get update
sudo apt-get install -y fluxgui
# gnome-terminal-color-solarize
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git /tmp/gnome-terminal-color-solarized
cd /tmp/gnome-terminal-color-solarized
sudo ./install.sh
cd $dir
