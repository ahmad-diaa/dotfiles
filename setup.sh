#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/projects/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="zshrc zprofile vimrc vim Xresources"    # list of files/folders to symlink in homedir

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/.$file ~/.$file
done

configs="kitty bspwm sxhkd polybar rofi picom neofetch bin dunst images"
for cfg in $configs; do
     echo "Moving any existing dotfiles from ~/.config to $olddir/.config"
    mv ~/.config/$cfg $olddir/.config/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/.config/$cfg ~/.config/
done

