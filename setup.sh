#!/bin/bash
# Simple setup.sh for configuring Ubuntu
# for headless setup. 

# saving setup folder
curr_dir=`pwd`
dir=`dirname $0`
FILE_PATH=`cd  $dir;pwd`

# Install Node.js & rlwrap
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs rlwrap

# git pull and install dotfiles as well
cd $HOME
cp -b $FILE_PATH/dotfiles/.dir_colors .
cp -b $FILE_PATH/dotfiles/.screenrc .
cp -b $FILE_PATH/dotfiles/.bash_profile .
cp -b $FILE_PATH/dotfiles/.bashrc .
cp -b $FILE_PATH/dotfiles/.bashrc_custom .

# setup vim
sudo apt-get install -y vim
mkdir -p .vim/colors
cp $FILE_PATH/vim/*.vim .vim/colors
cp $FILE_PATH/vim/.vimrc .
