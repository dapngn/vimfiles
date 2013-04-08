#!/bin/bash
function clonepull {
SFI=$IFS
IFS=/
R=($1)
D=${R[4]}
IFS=.
D=($D)
D=${D[0]}.${D[1]}
IFS=$SFI	
if ! git clone $1
		then
		cd ${D}
		git pull
	fi
}

clonepull https://github.com/kien/ctrlp.vim.git
clonepull https://github.com/vim-scripts/DirDiff.vim.git
clonepull https://github.com/othree/html5.vim.git
clonepull https://github.com/vim-scripts/jsbeautify.git
clonepull https://github.com/fholgado/minibufexpl.vim.git
clonepull https://github.com/cakebaker/scss-syntax.vim.git
clonepull https://github.com/ervandew/supertab.git
clonepull https://github.com/altercation/vim-colors-solarized.git
clonepull https://github.com/tpope/vim-commentary.git
clonepull https://github.com/hail2u/vim-css3-syntax.git
clonepull https://github.com/skammer/vim-css-color.git
clonepull https://github.com/pangloss/vim-javascript.git
clonepull https://github.com/tpope/vim-surround.git
clonepull https://github.com/mattn/zencoding-vim.git
