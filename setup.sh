#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/projects/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="oh-my-zsh zshrc zprofile vimrc vim Xresources xinitrc"    # list of files/folders to symlink in homedir

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

configs="kitty bspwm sxhkd polybar rofi picom neofetch bin dunst images .local"
for cfg in $configs; do
    echo "Moving any existing dotfiles from ~/.config to $olddir/.config"
    mv ~/.config/$cfg $olddir/.config/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/.config/$cfg ~/.config/
done

echo "Moving existing oh-my-zsh plugins to $olddir/oh-my-zsh-plugins"
mv ~/.oh-my-zsh/custom/plugins/* $olddir/oh-my-zsh-plugins/
for filename in $dir/oh-my-zsh-plugins/*; do
    ln -s $filename ~/.oh-my-zsh/custom/plugins/    
done


echo "Moving fonts to $olddir/.fonts"
sudo mv /usr/share/fonts $olddir/.fonts
sudo ln -s $dir/.fonts /usr/share/fonts
