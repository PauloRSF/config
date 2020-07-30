# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History configs
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# Check window size
shopt -s checkwinsize

# Terminal colors configs
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Terminal prompt configs
if [ "$color_prompt" = yes ]; then
    PS1=$(clc -e '<bold + green:\\u> in <bold + blue:\\w> ')
else
    PS1='\u in \w '
fi
unset color_prompt

# auto completion configs
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# set useful aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# disable the CTRL+S terminal freeze
stty -ixon
stty susp undef

