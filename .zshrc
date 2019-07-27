echo "> $(clear)"
echo "> $(date)"
echo "> $(uptime -p) since $(uptime -s)"
echo "> $(tty)"
echo ""

export PATH=~/scripts:$PATH

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
bindkey -e

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

zstyle ':completion::complete:*' gain-privileges 1

autoload -Uz promptinit
promptinit
prompt walters

alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot'
alias r='ranger'

unsetopt BEEP

case $(tty) in
    (/dev/tty1) startx
esac

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
