all:
	# Install custom vim plugins
	cp -r vim/* ~/.vim/
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
