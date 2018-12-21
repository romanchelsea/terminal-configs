# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

alias vim='vi'
alias ll='ls -la'

# User specific environment and startup programs

# System Path
PATH="$PATH:$HOME/bin"

# This directory exist in Vagrant VM
if [ -d /home/vagrant/.local/bin ]; then
  PATH="$PATH:/home/vagrant/.local/bin"
fi

# export PATH=/Users/xiongwe/homebrew/bin:$PATH

export PATH


# The /usr/libexec/java_home does not exist in CentOS
if [ $(uname -r) !=  "2.6.32-358.23.2.el6.x86_64" ]; then
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) # JAVA_HOME
else
  # CentOS
  # source scl installed software
  source /opt/rh/rh-python36/enable
  source /opt/rh/rh-git29/enable
fi


# Colors configuration for gruvbox
# source "/Users/xiongwe/.vim/bundle/gruvbox/gruvbox_256palette_osx.sh"

# RVM
# source ~/.profile

export LESS="-CQaix4"

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

UC=$COLOR_CYAN               # user's color
[ $UID -eq "0"  ] && UC=$COLOR_RED   # root's color

PS1="\[${UC}\]\u \[${COLOR_LIGHT_BLUE}\]\w \[${COLOR_LIGHT_PURPLE}\]=>\[${COLOR_NC}\] "


# Third party software

if $(brew 2>/dev/null) && [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
