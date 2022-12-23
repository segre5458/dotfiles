#!/bin/sh

# vim
ln --force -s ~/dotfiles/.vimrc ~/.vimrc
if [ -d ~/.vim ]; then
  rm -rf ~/.vim
fi
ln --force -s ~/dotfiles/.vim/ ~/.vim
if [ ! -d ~/.cache/dein ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh)"
fi


# tmux
if [ -d ~/.config/tmux ]; then
  rm -rf ~/.config/tmux
fi
ln --force -s ~/dotfiles/tmux/ ~/.config/tmux
if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
tmux source ~/dotfiles/tmux/tmux.conf


# zsh
if [ ! -e ~/.zplug ]; then 
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
if [ ! -d ~/bin/z ]; then
  git clone git@github.com:rupa/z.git ~/bin/z
fi
ln --force -s ~/dotfiles/z.sh ~/z.sh
ln --force -s ~/dotfiles/.zshrc ~/.zshrc
ln --force -s ~/dotfiles/.zprofile ~/.zprofile

# xbindkey
ln --force -s ~/dotfiles/.xbindkeysrc ~/.xbindkeysrc

