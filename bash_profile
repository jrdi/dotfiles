export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

if [ -f /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh ]; then
  . /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh
fi

if [ -f /usr/local/opt/git/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/opt/git/etc/bash_completion.d/git-completion.bash
fi

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"

  # prompt with ruby version
  # rbenv version | sed -e 's/ .*//'
  __rbenv_ps1 () {
    rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
    printf $rbenv_ruby_version
  }
fi

# prompt with git && rbenv
if [ -f `which git` ] && [ -f `which rbenv` ]; then
  export PS1='\[\033[01;36m\]$(__rbenv_ps1) \[\033[01;34m\]\w\[\033[01;36m\]$(__git_ps1 "[%s]") \[\033[01;34m\]\$\[\033[00m\] '
elif [ -f `which git` ]; then
  export PS1='\[\033[01;34m\]\w\[\033[01;36m\]$(__git_ps1 "[%s]") \[\033[01;34m\]\$\[\033[00m\] '
elif [ `which rbenv` ]; then
  export PS1='\[\033[01;36m\]$(__rbenv_ps1) \[\033[01;34m\]\w \$\[\033[00m\] '
else
  export PS1='\[\033[01;32m\]\u@\h\[\033[01;33m\] \w \[\033[01;34m\]\$\[\033[00m\] '
fi

alias b='bundle exec'
