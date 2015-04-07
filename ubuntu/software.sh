#!/bin/sh

# Mutate
sudo add-apt-repository ppa:mutate/ppa
sudo apt-get update
sudo apt-get install mutate

# Preload
sudo apt-get install -y preload

# Z-shell + oh-my-zsh
sudo apt-get install -y zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
