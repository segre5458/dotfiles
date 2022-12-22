#!/bin/sh
ln --force -s ~/dotfiles/.vimrc ~/.vimrc
ln --force -s ~/dotfiles/.vim/ ~/.vim

ln --force -s ~/dotfiles/tmux/ ~/.config/tmux
if [ ! -e ~/.zplug ]; then 
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
if [ ! -d ~/bin/z ]; then
  git clone git@github.com:rupa/z.git ~/bin/z
fi
ln --force -s ~/dotfiles/.zshrc ~/.zshrc

ln --force -s ~/dotfiles/.zprofile ~/.zprofile

ln --force -s ~/dotfiles/.xbindkeysrc ~/.xbindkeysrc

ln --force -s ~/dotfiles/z.sh ~/z.sh

