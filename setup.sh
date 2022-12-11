#!/bin/sh
if [ ! -e ~/.vimrc ]; then
  ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [ ! -d ~/.vim ]; then
  ln -s ~/dotfiles/.vim ~/.vim
fi

if [ ! -d ~/.config/tmux ]; then
  ln -s ~/dotfiles/tmux ~/.config/tmux
fi

if [ ! -e ~/.zplug ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
if [ ! -d ~/bin/z ]; then
  git clone git@github.com:rupa/z.git ~/bin/z
fi
if [ ! -e ~/.zshrc ]; then
  ln -s ~/dotfiles/.zshrc ~/.zshrc
fi

if [ ! -e ~/.zprofile ]; then
  ln -s ~/dotfiles/.zprofile ~/.zprofile
fi

if [ ! -e ~/.xbindkeysrc ]; then
  ln -s ~/dotfiles/.xbindkeysrc ~/.xbindkeysrc
fi

if [ ! -e ~/z.sh ]; then
  ln -s ~/dotfiles/z.sh ~/z.sh
fi
