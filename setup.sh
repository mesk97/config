#!/bin/bash

set -x
set -e

CODEDIR=~/code

# 0. download 
#	wget https://raw.githubusercontent.com/mesk97/config/master/setup.sh
# 1. generate ssh-keygen
# 2. add id_rsa.pub https://github.com/settings/ssh/new
# 3. run setup.sh

if [[ ! -L $CODEDIR ]]; then 
	# create code repo 
	ln -sf /mnt/c/code ~/code

	# 
	cd ~/code
       	
	git clone git@github.com:mesk97/config.git
	cd config
fi

git config --add user.email k.pakulin@tinkoff.ru
git config --add user.name k.pakulin

for i in .bashrc .vimrc .ssh/config; do
	cp -ar $i ~/$i
	chmod 644 ~/$i
done

