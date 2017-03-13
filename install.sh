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
# vim
sudo apt-get install -y vim-nox
# derek wyatt vim-config
git clone https://github.com/derekwyatt/vim-config.git ~/.vim
cp `basename $0`/vimrc ~/.vimrc
# vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# unzip
sudo apt-get install -y unzip
# curl
sudo apt-get install -y curl
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# java 8
# TODO: update to unattended install
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
# bouncycastle
wget https://bouncycastle.org/download/bcprov-jdk15on-154.jar -O /tmp/bcprov-jdk15on-154.jar
sudo mv /tmp/bcprov-jdk15on-154.jar /usr/lib/jvm/java-8-oracle/lib
# scala
wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.tgz -O /tmp/scala-2.11.8.tgz
sudo tar -xvzf /tmp/scala-2.11.8.tgz
sudo mv /tmp/scala-2.11.8 /usr/local/
sudo update-alternatives --install /usr/bin/scala scala /usr/local/scala-2.11.8/bin/scala 1
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
sudo apt-get install -y virtualbox
sudo apt-get install -y virtualbox-dkms
# vagrant
sudo apt-get install -y vagrant
#redshift
sudo apt-get install -y redshift redshift-gtk
# gnome-terminal-color-solarize
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git /tmp/gnome-terminal-color-solarized
cd /tmp/gnome-terminal-color-solarized
sudo ./install.sh
# posgresql 9.4
sudo apt-get install -y posgresql
# pgadmin3
sudo apt-get install -y pgadmin3
# silver searcher
sudo apt-get install -y silversearcher-ag
#nodejs
sudo wget https://nodejs.org/dist/v6.2.2/node-v6.2.2-linux-x64.tar.xz -O /tmp/node-v6.2.2-linux-x64.tar.xz
sudo tar -xf node-v6.2.2-linux-x64.tar.xz
sudo mv /tmp/node-v6.2.2-linux-x64 /usr/local/
sudo update-alternatives --install /usr/bin/node node /usr/local/node-v6.2.2-linux-x64/bin/node 1
sudo update-alternatives --install /usr/bin/npm npm /usr/local/node-v6.2.2-linux-x64/bin/npm 1
rm node-v6.2.2-linux-x64.tar.xz
#sbt
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt
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
sudo apt-get install unity-tweak-tool

cd $dir
