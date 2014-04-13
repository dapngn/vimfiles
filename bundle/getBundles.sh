#!/bin/bash
function clonepull {
if ! git clone $1
		then
		cd $2
		git pull
		cd .. 
	fi
}

clonepull https://github.com/tpope/vim-pathogen.git vim-pathogen
clonepull https://github.com/kien/ctrlp.vim.git ctrlp.vim
clonepull https://github.com/vim-scripts/DirDiff.vim.git DirDiff.vim
clonepull https://github.com/othree/html5.vim.git html5.vim
clonepull https://github.com/vim-scripts/jsbeautify.git jsbeautify
clonepull https://github.com/fholgado/minibufexpl.vim.git minibufexpl.vim
clonepull https://github.com/cakebaker/scss-syntax.vim.git scss-syntax.vim
clonepull https://github.com/ervandew/supertab.git supertab
clonepull https://github.com/altercation/vim-colors-solarized.git vim-colors-solarized
clonepull https://github.com/tpope/vim-commentary.git vim-commentary
clonepull https://github.com/hail2u/vim-css3-syntax.git vim-css3-syntax
clonepull https://github.com/skammer/vim-css-color.git vim-css-color
clonepull https://github.com/pangloss/vim-javascript.git vim-javascript
clonepull https://github.com/tpope/vim-surround.git vim-surround
clonepull https://github.com/PProvost/vim-ps1.git vim-ps1
clonepull https://github.com/RussMartinez/watch-and-reload.git watch-and-reload 
clonepull https://github.com/tpope/vim-obsession.git vim-obsession
clonepull https://github.com/digitaltoad/vim-jade.git vim-jade
clonepull https://github.com/mattn/emmet-vim.git emmet-vim
clonepull https://github.com/emmetio/emmet.git emmet
