#!/usr/bin/env bash

# cd "$(dirname "${BASH_SOURCE}")";

# Create soft symbolic link for dotfiles
function link() {
	if [[ -f ~/$1 ]] || [[ -h ~/$1 ]]; then 
		printf "%-40b %-30b\n" "\e[35m$HOME/$1\e[0m" "\e[96malready exists, replacing it with soft link ...\e[0m"
		rm ~/$1; 
	fi 
	ln -sf $PWD/symbolink/$1 ~/$1
}

function init() {
	#	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
	#		--exclude "README.md" --exclude "LICENSE-MIT.txt" --exclude "Brewfile" \
	#		--exclude "Caskfile" --exclude "new-os/" --exclude "bin" \
	#		-avh --no-perms . ~;
	link .aliases
	link .bash_profile
	link .bash_prompt
	link .bashrc
	link .editorconfig
	link .exports
	link .extra
	link .functions
	link .gitconfig
	link .gvimrc
	link .hushlogin
	link .inputrc
	link .vimrc
	link .wgetrc
	link .vim
	link .scalafmt
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	init;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		init;
	fi;
fi;
unset init;

echo -e "\e[1;92mBootstrap is done with success!"