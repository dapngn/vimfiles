vimfilest
========

Features
---------
Vim configuration that leverages <a
href="https://github.com/tpope/vim-pathogen">pathogen</a> for easy setup and
modification.

Usage
-----
1. Place pathogen.vim in ~/vimfiles/autoload
2. When cloning be sure to use `--recursive` flag to get all of the submodules.
3. Source ~/.vimrc and ~/.gvimrc to the repos root .vimrc and .gvimrc respectively.
4. When pulling be sure to use `git submodule foreach git pull` to update all
	 submodules.
