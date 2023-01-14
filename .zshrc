# Source manjaro-zsh-configuration
if [[ -e ~/dotfiles/zsh/manjaro-zsh-config ]]; then
  source ~/dotfiles/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e ~/dotfiles/zsh/manjaro-zsh-prompt ]]; then
  source ~/dotfiles/zsh/manjaro-zsh-prompt
fi

alias clip='xsel --clipboard --input'
alias shutdown='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'
alias blenderlauncher='/home/segre/Documents/blender/addon/Blender\ Launcher'
alias suspend='systemctl suspend -i'
alias rm='rm -i'
alias ls='ls --color=auto'
alias l=`ls`
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias la='ls -Al'
alias g='git'
alias ga='git add -p'
alias gc='git commit'
alias gst='git status'
alias gsw='git switch'
alias gpu='git push'
alias gpl='git pull --rebase'
alias l='ls -CF'
alias vi='vim'
alias sudoe='sudo -e'
alias c='clear'
alias sjis='iconv -f SJIS'
alias tmux='tmux -u2'
alias cxx='g++ -std=c++17 -Wall -O2 -g -fsanitize=undefined -D_GLIBCXX_DEBUG'
alias pdf="evince"

# tmux open
count=`ps aux | grep tmux | grep -v grep | wc -l`
if test $count -eq 0; then
      echo `tmux`
    elif test $count -eq 1; then
          echo `tmux a`
fi

# xbindkeys
xbindkeys

# Wacom Keyboard
wacom_pad=`xsetwacom --list devices | cut -d' ' -f1-7 --output-delimiter=" " | grep "Pad" | sed 's/ *$//'`
wacom_pen=`xsetwacom --list devices | cut -d' ' -f1-7 --output-delimiter=" " | grep "Pen" | sed 's/ *$//g'`
if [ -n "$wacom_pad" ]; then
  xsetwacom --set "$wacom_pad" Button 3 "key +ctrl z -ctrl"
  xsetwacom --set "$wacom_pad" Button 1 "key +ctrl +shift ; -shift -ctrl"
  xsetwacom --set "$wacom_pad" Button 2 "key +ctrl - -ctrl"
fi

# zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting"
zplug "zdharma/history-search-multi-word"

source ~/z.sh
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
      if read -q; then
            echo; zplug install
              fi
fi
HISTSIZE=10000
SAVEHIST=10000
zplug load

# opam configuration
[[ ! -r /home/segre/.opam/opam-init/init.zsh ]] || source /home/segre/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
eval `opam config env`
