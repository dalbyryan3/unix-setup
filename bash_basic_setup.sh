#!/bin/bash
# This script assumes having the apt package manager
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install curl -y
sudo apt-get install wget -y
sudo apt-get install vim -y
sudo apt-get install tmux -y
sudo apt-get install git -y
sudo apt-get install silversearcher-ag -y

git clone https://github.com/dalbyryan3/dot-files.git ~/dot-files
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s ~/dot-files/.vimrc ~/.vimrc
ln -s ~/dot-files/.tmux.conf ~/.tmux.conf
ln -s ~/dot-files/.gitconfig ~/.gitconfig
ln -s ~/dot-files/.gitignore ~/.gitignore
ln -s ~/dot-files/.gitattributes ~/.gitattributes

vim -E -c PluginInstall -c qa

yes | source ~/.vim/bundle/fzf/install
yes | source ~/.tmux/plugins/tpm/scripts/install_plugins.sh

grep -qxF 'export VISUAL=vim' ~/.bashrc || echo 'export VISUAL=vim' >> ~/.bashrc
grep -qxF 'export EDITOR="$VISUAL"' ~/.bashrc || echo 'export EDITOR="$VISUAL"' >> ~/.bashrc
grep -qxF 'alias tmux="tmux -2"' ~/.bashrc || echo 'alias tmux="tmux -2"' >> ~/.bashrc
grep -qxF 'alias ll="ls -latr"' ~/.bashrc || echo 'alias ll="ls -latr"' >> ~/.bashrc
grep -qxF 'alias gs="git status"' ~/.bashrc || echo 'alias gs="git status"' >> ~/.bashrc
grep -qxF 'alias gl="git log"' ~/.bashrc || echo 'alias gl="git log"' >> ~/.bashrc
grep -qxF 'alias ga="git add"' ~/.bashrc || echo 'alias ga="git add"' >> ~/.bashrc
grep -qxF 'alias gc="git commit"' ~/.bashrc || echo 'alias gc="git commit"' >> ~/.bashrc
grep -qxF 'alias gcm="git commit -m"' ~/.bashrc || echo 'alias gcm="git commit -m"' >> ~/.bashrc
grep -qxF 'alias gcam="git commit -am"' ~/.bashrc || echo 'alias gcam="git commit -am"' >> ~/.bashrc
grep -qxF 'alias gd="git diff"' ~/.bashrc || echo 'alias gd="git diff"' >> ~/.bashrc

echo
echo -e "\033[1mShould source ~/.bashrc or restart shell now"
echo
