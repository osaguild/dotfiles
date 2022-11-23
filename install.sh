#!/bin/bash
echo "...getting backup to ~/bk_dotfiles"
mkdir ~/bk_dotfiles
mv ~/.vimrc ~/bk_dotfiles
mv ~/.zprofile ~/bk_dotfiles
mv ~/.zshenv ~/bk_dotfiles
mv ~/.zshrc ~/bk_dotfiles

echo "...copying files to ~/"
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc

echo "...reflecting path"
source ~/.zshrc