.PHONY: all dotfiles vim zsh

all: dotfiles vim zsh

dotfiles:
	./setup_dotfiles.sh

# Install custom vim plugins
vim:
	mkdir -p ~/.vim && cp -r vim/* ~/.vim
	# Install vundle and its addons
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	# Install YCM compiled part
	# sudo apt-get install -y build-essential cmake python-dev
	# ~/.vim/bundle/YouCompleteMe/install.py --clang-completer --tern-completer

zsh:
	sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	echo "source ~/.bash_profile" >> ~/.zshrc
