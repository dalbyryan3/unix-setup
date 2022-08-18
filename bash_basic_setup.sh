#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install vim -y
sudo apt-get install tmux -y
sudo apt-get install git -y
sudo apt-get install fzf -y
sudo apt-get install silversearcher-ag -y

git clone https://github.com/dalbyryan3/dot-files.git ~/dot-files
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s ~/dot-files/.vimrc ~/.vimrc 
ln -s ~/dot-files/.tmux.conf ~/.tmux.conf
ln -s ~/dot-files/.gitconfig ~/.gitconfig
ln -s ~/dot-files/.gitignore ~/.gitignore
ln -s ~/dot-files/.gitattributes ~/.gitattributes

echo "export VISUAL=vim" >> ~/.bashrc
echo "export EDITOR=\"$VISUAL\"" >> ~/.bashrc
echo "alias tmux=\"tmux -2\"" >> ~/.bashrc
echo "alias ll=\"ls -latr\"" >> ~/.bashrc
echo "alias gs=\"git status\"" >> ~/.bashrc
echo "alias gl=\"git log\"" >> ~/.bashrc
echo "alias ga=\"git add\"" >> ~/.bashrc
echo "alias gc=\"git commit\"" >> ~/.bashrc
echo "alias gd=\"git diff\"" >> ~/.bashrc

vim -E -c PluginInstall -c q
source ~/.tmux/plugins/tpm/scripts/install_plugins.sh
source ~/.bashrc
