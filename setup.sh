#!/bin/bash
# Authors:
#   Dongda Li <dongdongbhbh@gmail.com>
#
# Description:
#   A post-installation bash script for Ubuntu
# tab width
tabs 4
clear

cd ~
sudo apt update
# tmux
sudo apt install tmux 
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
tmux source-file ~/.tmux.conf

# ag search
sudo apt-get install silversearcher-ag

# git
sudo apt install git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

sudo apt install htop vim git

# set up bash color 
cat ./scripts/bash_profile.sh >> .bash_profile
cat ./scripts/color_config.sh >> .bashrc

# set up privoxy
# sudo apt-get install privoxy
# edit /etc/privoxy/config
# sudo /etc/init.d/privoxy restart
# export http_proxy="127.0.0.1:8118"
# export https_proxy="127.0.0.1:8118"
