#!/bin/bash
yum update
echo 'Installing common packages...'
yum install -y \
  zsh \
  vim \
  wget \
  git \
  python \
  java \
  ruby

wget -P /tmp 'http://downloads.lightbend.com/scala/2.12.1/scala-2.12.1.tgz'
scala_binaries='/usr/local/share/scala'
mkdir -p $scala_binaries
tar -xf /tmp/scala-2.12.1.tgz -C $scala_binaries

echo "PATH=${PATH}:$scala_binaries" > /etc/profile.d/scala-path.sh && \
chmod 755 /etc/profile.d/scala-path.sh

echo 'Fetching ammounite'
curl -L -o /usr/local/bin/amm https://git.io/vMF2M && chmod +x /usr/local/bin/amm

echo 'Fetching oh-my-zsh...'
sh -c "$(curl -fsSL \
  https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'Installing homesick...'
gem install homesick
echo 'Linking dotfiles...'
homesick clone laithalissa/dotfiles
yes | homesick symlink dotfiles
