#!/bin/bash
function clonepull {
if ! git clone --depth 1 $1
		then
		cd $2
		git pull
		cd .. 
	fi
}

clonepull https://github.com/tpope/vim-pathogen.git vim-pathogen
clonepull https://github.com/fholgado/minibufexpl.vim.git minibufexpl.vim
clonepull https://github.com/tpope/vim-commentary.git vim-commentary
clonepull https://github.com/dapngn/watch-and-reload.git watch-and-reload 
clonepull https://github.com/mattn/emmet-vim.git emmet-vim
clonepull https://github.com/scrooloose/nerdtree.git nerdtree
clonepull https://github.com/vim-syntastic/syntastic.git syntastic
clonepull https://github.com/altercation/vim-colors-solarized.git
