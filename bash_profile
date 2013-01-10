RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[1;37m\]"
BLACK="\[\033[0;30m\]"
OFF="\[\033[0m\]"

export PATH="/usr/local/bin:$PATH"

source ~/.dotfiles/bash_completion.d/git-completion.bash

alias slt='open -a "Sublime Text 2"'
alias mou='open -a Mou'
alias weeknumber='date +%W'
alias crisalix_logs="tail -f ~/Code/crisalix/log/development.log ~/Code/SSO/log/development.log ~/Code/patients3d/log/development.log ~/Code/estetix/log/development.log"

export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
export GNUTERM=x11
export OCTAVE_TERMINAL=X11

eval "$(/Users/jrdi/crisalix/bin/crisalix init -)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
