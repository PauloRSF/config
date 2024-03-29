case $- in
    *i*) ;;
      *) return;;
esac

function source-if-exists {
  if [ -f $1 ]; then . $1; fi
}

export PATH="$PATH:$HOME/.local/bin/custom"

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\] in \[\033[01;34m\]\w\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u in \w '
fi

unset color_prompt force_color_prompt

if ! shopt -oq posix; then
    source-if-exists /usr/share/bash-completion/bash_completion
fi

source-if-exists $HOME/.config/bash/aliases
source-if-exists $HOME/.config/bash/tools

