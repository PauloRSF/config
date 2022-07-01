# Less
export LESSHISTFILE=/dev/null

# Cargo
source "$HOME/.cargo/env"

# ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Chromium
export CHROME_BIN=$(which chromium)

# Go up N dirs
function cdup {
    case $1 in
        ''|*[!0-9]*) echo 'up: argument needs to be an integer'; return 1 ;;
        *) cd $(for i in $(seq $1); do printf '../'; done) ;; # MY EYES
    esac
}

# Containerized tools
function containerize {
    if [ ! -z $(which $1) ]; then
        1>&2 echo "containerize: there's already a file called '$1' in your PATH"
        return 1
    fi

    sudo docker pull $3

    if [ $? -eq 0 ]; then
	      TOOL_PATH="$HOME/.local/bin/$1"
	      echo -e '#!/bin/bash\n' > $TOOL_PATH
	      echo -e "sudo docker run $4 -it --net=host -v \$(pwd):/workdir -w /workdir --rm $3 $2 \$@\n" >> $TOOL_PATH
	      sudo chmod +x $TOOL_PATH
    else
        1>&2 echo 'containerize: aborting containerization...'
    fi
}

# Source file only if it exists
function source-if-exists {
  if [ -f $1 ]; then
      . $1
  fi
}

