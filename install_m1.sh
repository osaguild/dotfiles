#!/bin/bash
echo "...installing homebrew"
brew bundle

echo "...getting backup to ~/bk_dotfiles"
mkdir ~/bk_dotfiles
mv ~/.vimrc ~/bk_dotfiles
mv ~/.zprofile ~/bk_dotfiles
mv ~/.zshenv ~/bk_dotfiles
mv ~/.zshrc ~/bk_dotfiles

echo "...copying files to ~/"
cp .vimrc ~/.vimrc
cp ./m1/.zshrc ~/.zshrc

echo "...installing zsh plugins"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

echo "...reflecting path"
source ~/.zshrc