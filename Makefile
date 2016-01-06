all:
	# Install custom vim plugins
	mkdir -p ~/.vim && cp -r vim/* ~/.vim
	./load_dotfiles.sh
	vim +PluginInstall +qall
	source ~/.bash_profile

vundle:
	# Install vundle
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle/Vundle.vim

ubuntu:
	ubuntu/install_software.sh

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

load:
	./load_dotfiles.sh
