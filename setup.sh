#!/bin/sh

## NEOVIM LATEST VERSION - STABLE
#---------------------------------------------------------------------
install_neovim() {
	echo "Installing neovim......................................"
	cd ~/.local/bin
	curl -s -JLO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
	tar xzvf nvim-linux64.tar.gz
	rm -rdf nvim-linux64.tar.gz
	ln -s ~/.local/bin/nvim-linux64/bin/nvim ~/.local/bin
}

## MINICONDA - need this for local installations
#---------------------------------------------------------------------
install_miniconda() {
	echo "Installing miniconda......................................"
	curl -sSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o ~/miniconda.sh
	chmod +x miniconda.sh
	bash ~/miniconda.sh -b -p ~/.miniconda && echo "yes" | ~/.miniconda/bin/conda init
	rm -rdf miniconda.sh
	echo export PATH="$HOME/.miniconda/bin:$PATH" >> ~/.bashrc
	source ~/.bashrc
}

## FD-FIND - need this for telescope live-grep
#---------------------------------------------------------------------
install_fd() {
	echo "Installing fd-find......................................"
	conda install -y -c conda-forge fd-find
}

## RIPGREP - need this for telescope live-grep
#---------------------------------------------------------------------
install_ripgrep() {
	echo "Installing ripgrep......................................"
	conda install -y -c conda-forge ripgrep
}

## creates symbolic-link --> .config/nvim
symlink_nvim() {
	ln -s ~/.nvim/nvim ~/.config/
}

setup() {
	install_neovim
	install_miniconda
	install_fd
	install_ripgrep
	symlink_nvim
}

setup
