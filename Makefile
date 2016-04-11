.PHONY: all load_dotfiles vim zsh autojump ag

all: vim zsh ag

# Install custom vim plugins
vim:
	mkdir -p ~/.vim && cp -r vim/* ~/.vim
	# Install vundle and it's addons
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle/Vundle.vim
	vim +PluginInstall +qall
	# Install YCM compiled part
	sudo apt-get install -y build-essential cmake python-dev
	~/.vim/bundle/YouCompleteMe/install.py --clang-completer --tern-completer

zsh:
	sh -c "$$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	echo "source ~/.bash_profile" >> ~/.zshrc

autojump:
	sudo apt-get install -y autojump
	echo "source /usr/share/autojump/autojump.sh" >> ~/.bash_profile

mutate:
	sudo add-apt-repository ppa:mutate/ppa
	sudo apt-get update
	sudo apt-get install -y mutate

ag:
	sudo apt-get install -y silversearcher-ag

ubuntu:
	ubuntu/install_software.sh
