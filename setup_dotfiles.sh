# TODO: Fix for all OSes.

# set -e

ln -s tmux.conf ~/.tmux.conf
ln -s vimrc.local ~/.vimrc.local
ln -s vimrc.osx ~/.vimrc.osx
ln -s vimrc.ubuntu ~/.vimrc.ubuntu
echo "source ~/.vimrc.osx" > ~/.vimrc.which
