all:
	# Install custom vim plugins
	cp -r vim/* ~/.vim/
	./load_dotfiles.sh
	vim +PluginInstall +qall

vundle:
	# Install vundle
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle/Vundle.vim

ubuntu:
	ubuntu/install_software.sh
