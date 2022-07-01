# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rgrep='rgrep --color=auto'

# Replace peasant default coreutils with masterrace tools
alias cp='rsync -avh --progress'
alias cat='batcat'

# A bit of vanity
alias sudo='sudo --prompt="Master, grant me your wizard powers, please: "'

# Laziness
alias open='xdg-open'
alias own-all='sudo chown -R $(whoami):$(whoami) .'
alias cdtemp='cd $(mktemp -d)'
alias alu='apt list --upgradable'
alias aud='sudo apt update'
alias aug='sudo apt upgrade'
alias phonecast='scrcpy --turn-screen-off --max-fps 15 --bit-rate 1M --max-size 800'

# Defaults
alias python='python3'
alias nnn='nnn -deH'

# Free as in freedom (?)
alias code='codium'

