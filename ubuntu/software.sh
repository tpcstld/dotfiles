#!/bin/sh

# Mutate
sudo add-apt-repository ppa:mutate/ppa
sudo apt-get update
sudo apt-get install mutate

# Preload
sudo apt-get install -y preload

# Z-shell
sudo apt-get install -y zsh
