#!/bin/bash

# Create symlinks

#-------------------
# Variables
#-------------------
dir=~/Projects/dotfiles
dir_bak=~/dotfiles_bak
files=".cshrc .bashrc .bash_profile .bash_prompt .bash_aliases .vimrc .colors"


#-------------------
# Create backup dir
#-------------------
echo "Creating $dir_bak for backup of existing dotfiles"
mkdir -p $dir_bak
echo "...done"

cd $dir
for file in $files; do
	echo "Moving old $file and creating new symlink"
	mv ~/$file $dir_bak
	ln -s $dir/$file ~/$file
done

