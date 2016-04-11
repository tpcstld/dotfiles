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
ln -s $(pwd)/vimrc.bundles.local ~/.vimrc.bundles.local
ln -s $(pwd)/vimrc.local ~/.vimrc.local
ln -s $(pwd)/vimrc.osx ~/.vimrc.osx
ln -s $(pwd)/vimrc.ubuntu ~/.vimrc.ubuntu

echo "source ~/.vimrc.osx" > ~/.vimrc.which
echo "source-file ~/.tmux.conf.osx" > ~/.tmux.conf.which
echo "source ~/.bash_profile.osx" > ~/.bash_profile.which