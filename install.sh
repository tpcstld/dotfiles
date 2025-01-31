#!/bin/bash

# TODO: Fix for all OSes.

# set -e

cd "$(dirname "$0")"

ln -s $(pwd)/bash_profile ~/.bash_profile
ln -s $(pwd)/bash_profile.osx ~/.bash_profile.osx
ln -s $(pwd)/bash_profile.ubuntu ~/.bash_profile.ubuntu
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/gitignore ~/.gitignore
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/tmux.conf.osx ~/.tmux.conf.osx
ln -s $(pwd)/tmux.conf.ubuntu ~/.tmux.conf.ubuntu
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/vimrc.bundles ~/.vimrc.bundles
ln -s $(pwd)/vimrc.local ~/.vimrc.local
ln -s $(pwd)/vimrc.osx ~/.vimrc.osx
ln -s $(pwd)/vimrc.ubuntu ~/.vimrc.ubuntu
ln -s $(pwd)/tern-project ~/.tern-project
ln -s $(pwd)/ycm_extra_conf.py ~/.ycm_extra_conf.py
ln -s $(pwd)/agignore ~/.agignore
mkdir ~/.vim
cp -r $(pwd)/vim/bundle/ ~/.vim/bundle
ln -s $(pwd)/vim/coc-settings.json ~/.vim/coc-settings.json
mkdir -p ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -s ~/.vim/coc-settings.json ~/.config/nvim/coc-settings.json
mkdir -p ~/.config/ghostty
ln -s $(pwd)/ghostty ~/.config/ghostty/config
touch ~/.vimrc.local.local
touch ~/.bash_profile.local

echo "source ~/.vimrc.ubuntu" > ~/.vimrc.which
echo "source-file ~/.tmux.conf.ubuntu" > ~/.tmux.conf.which
echo "source ~/.bash_profile.ubuntu" > ~/.bash_profile.which
