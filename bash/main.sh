export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export DOTFILES=~/Code/dotfiles

source "$DOTFILES/bash/aliases.sh"
source "$DOTFILES/bash/ps1.sh"

if [ -s "$DOTFILES/bash/private.sh" ]
  then source "$DOTFILES/bash/private.sh"
fi

export PS1='\[\033[01;33m\]$(__rbenv_ps1) \[\033[01;37m\]\w\[\033[01;33m\]$(__git_ps1 "[%s]") \[\033[01;37m\]\$\[\033[00m\] '
