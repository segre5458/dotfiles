# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias clip='xsel --clipboard --input'
alias shutdown='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'
alias blenderlauncher='/home/segre/Documents/blender/addon/Blender\ Launcher'
alias suspend='systemctl suspend -i'
alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias la='ls -Al'
alias g='git'
alias l='ls -CF'
alias vi='vim'
alias sudoe='sudo -e'
alias c='clear'
alias sjis='iconv -f SJIS'
