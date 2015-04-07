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

# Terminator and solarized colors for Terminator
sudo apt-get install -y terminator
curl https://raw.githubusercontent.com/ghuntley/terminator-solarized/master/config > temp.txt
mv temp.txt ~/.config/terminator/config
