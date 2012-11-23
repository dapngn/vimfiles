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
3. Add 1 `source [repository root]/.vimrc` line in your ~/.vimrc

Submodules
----------

* When cloning use `git submodule add [uri] vimfiles/bundle/[name of project]`
* When updating use `git submodule foreach git pull` to update all
	submodules
