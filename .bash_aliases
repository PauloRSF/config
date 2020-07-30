# Git
alias gcr='git clone --recursive'
alias gp='git push'
alias gck='git checkout'
alias glg='git log --graph --pretty=oneline --abbrev-commit'
alias gm='git merge'

ghclone () {
  git clone --recursive "https://github.com/$1.git"
}

list_repo_on_prompt () {
  if [ ! -z $ACTIVE_GIT_PLUGIN ]; then
    if [ -d '.git' ]; then
      GREPO_NAME=$(basename $(cat .git/config | grep 'url = ' | tail -c +8))
      if [ ! -z "$(echo $GREPO_NAME | grep '\.git' )" ]; then
        GREPO_NAME=$(echo $GREPO_NAME | head -c -5)
      fi
      if [ -f .git/HEAD ]; then
        GBRANCH_NAME=$(basename $(cat .git/HEAD | tail -c +6))
      fi
      GREPO_PATH=$(pwd)
    fi
    if [ ! -z $GREPO_PATH ] && [ ! -z $(pwd | grep "$GREPO_PATH") ]; then
      PS1=$(clc -e '<bold + green:\\u> in <bold + blue:\\w> on <bold + cyan:$GREPO_NAME (⊢ $GBRANCH_NAME)> ')
    else
      unset GREPO_PATH
      PS1=$(clc -e '<bold + green:\\u> in <bold + blue:\\w> ')
    fi
  fi
}

# Compression
alias tcg='tar -czvf'
alias tcb='tar -cjvf'
alias tcx='tar -cJvf'
alias tl='tar -tvf'

decomp () {
  filename="${1##*/}"
  extension="${filename#*.}"
  echo $extension
}

# Utils
alias tsize='du -hc'
alias cp='rsync -avh --progress'
alias ls='ls --color=auto'
alias la='ls -A'
alias grep='grep --color=auto'
alias clci='curl -s https://raw.githubusercontent.com/pauloRSF/clc/master/clc | sudo tee /usr/local/bin/clc > /dev/null && sudo chmod +x /usr/local/bin/clc'
genpass () {
  cat /dev/urandom | strings | tr -dc 'A-Za-z0-9!@#$%&*' | head -c $1 && echo
}

cd () {
  builtin cd "$@"
  list_repo_on_prompt
}

# Vim
alias vimi='vim +PluginInstall +qall'
alias vundlei='git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim'
