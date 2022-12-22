#!/bin/sh
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim

ln -s ~/dotfiles/tmux ~/.config/tmux

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
if [ ! -d ~/bin/z ]; then
  git clone git@github.com:rupa/z.git ~/bin/z
fi
ln -s ~/dotfiles/.zshrc ~/.zshrc

ln -s ~/dotfiles/.zprofile ~/.zprofile

ln -s ~/dotfiles/.xbindkeysrc ~/.xbindkeysrc

ln -s ~/dotfiles/z.sh ~/z.sh
