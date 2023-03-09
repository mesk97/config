#!/bin/bash

set -x
set -e

CODEDIR=~/code

# 1. generate ssh-keygen
# 2. add id_rsa.pub https://github.com/settings/ssh/new

if [[ ! -L $CODEDIR ]]; then 
	# create code repo 
	ln -sf /mnt/c/code ~/code

	# 
	cd ~/code
       	
	git clone git@github.com:mesk97/config.git
fi

cp -ar .bashrc ~/
cp -ar .vimrc ~/
cp -ar .ssh/config ~/.ssh/config


