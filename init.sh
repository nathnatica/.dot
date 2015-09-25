#!/bin/bash


if [ ! -f ~/.dot/.gitignore ]; then
	touch ~/.dot/.gitignore
	echo 'original/' >> ~/.dot/.gitignore
	echo '.gitignore' >> ~/.dot/.gitignore
fi

if [ ! -d ./original ]; then
	mkdir original
fi

if [ -f ~/.bashrc ] && [ ! -f ~/.dot/original/.bashrc ]; then
	mv ~/.bashrc ./original/
	ln -s ~/.dot/.bashrc ~/.bashrc
fi

if [ -f ~/.bash_profile ] && [ ! -f ~/.dot/original/.bash_profile ]; then
	mv ~/.bash_profile  ./original/
	ln -s ~/.dot/.bash_profile ~/.bash_profile
fi

if [ -f ~/.inputrc ] && [ ! -f ~/.dot/original/.inputrc ]; then
	mv ~/.inputrc ./original/
	ln -s ~/.dot/.inputrc ~/.inputrc
fi

if [ -f ~/.vimrc ] && [ ! -f ~/.dot/original/.vimrc ]; then
	mv ~/.vimrc ./original/
	ln -s ~/.dot/.vimrc ~/.vimrc
fi





