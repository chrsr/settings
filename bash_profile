# Exports
# --------------------------------------------------

export EDITOR=sub
export SVN_EDITOR=sub

export GRAILS_HOME=~/Dev/grails/grails-2.1.0/bin/grails
export NODE_PATH=/usr/local/lib/node
export PATH=/usr/local/bin:$PATH
export PATH=$GRAILS_HOME/bin:$PATH


# Aliases
# --------------------------------------------------

alias ll="ls -lh"
alias la="ls -lah"
alias fn="find . -name"


# Grails
# --------------------------------------------------

alias grails1.3.7="GRAILS_HOME=~/Dev/grails/grails-1.3.7 ~/Dev/grails/grails-1.3.7/bin/grails"
alias grails1.3.8="GRAILS_HOME=~/Dev/grails/grails-1.3.8 ~/Dev/grails/grails-1.3.8/bin/grails"
alias grails2.0.1="GRAILS_HOME=~/Dev/grails/grails-2.0.1 ~/Dev/grails/grails-2.0.1/bin/grails"
alias grails2.0.2="GRAILS_HOME=~/Dev/grails/grails-2.0.2 ~/Dev/grails/grails-2.0.2/bin/grails"
alias grails2.0.3="GRAILS_HOME=~/Dev/grails/grails-2.0.3 ~/Dev/grails/grails-2.0.3/bin/grails"
alias grails2.0.4="GRAILS_HOME=~/Dev/grails/grails-2.0.4 ~/Dev/grails/grails-2.0.4/bin/grails"
alias grails2.1.0="GRAILS_HOME=~/Dev/grails/grails-2.1.0 ~/Dev/grails/grails-2.1.0/bin/grails"
alias grails1=grails1.3.7
alias grails=grails2.1.0
alias run-hr="grails run-app -Djmx=true -Dlis=true -https -Djava.net.preferIPv4Stack=true"


# Colours
# --------------------------------------------------

# Regular
black="\[\e[0;30m\]"
red="\[\e[0;31m\]"
green="\[\e[0;32m\]"
yellow="\[\e[0;33m\]"
blue="\[\e[0;34m\]"
purple="\[\e[0;35m\]"
cyan="\[\e[0;36m\]"
white="\[\e[0;37m\]"

# Bold
bd_black="\[\e[1;30m\]"
bd_red="\[\e[1;31m\]"
bd_green="\[\e[1;32m\]"
bd_yellow="\[\e[1;33m\]"
bd_blue="\[\e[1;34m\]"
bd_purple="\[\e[1;35m\]"
bd_cyan="\[\e[1;36m\]"
bd_white="\[\e[1;37m\]"

# Underline
ul_black="\[\e[4;30m\]"
ul_red="\[\e[4;31m\]"
ul_green="\[\e[4;32m\]"
ul_yellow="\[\e[4;33m\]"
ul_blue="\[\e[4;34m\]"
ul_purple="\[\e[4;35m\]"
ul_cyan="\[\e[4;36m\]"
ul_white="\[\e[4;37m\]"

# Background
bg_black="\[\e[40m\]"
bg_red="\[\e[41m\]"
bg_green="\[\e[42m\]"
bg_yellow="\[\e[43m\]"
bg_blue="\[\e[44m\]"
bg_purple="\[\e[45m\]"
bg_cyan="\[\e[46m\]"
bg_white="\[\e[47m\]"

# Reset
reset="\[\e[0m\]"


# Git
# --------------------------------------------------

GIT_PS1_SHOWDIRTYSTATE=true

# Git completion
if [ -f `brew --prefix git`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix git`/etc/bash_completion.d/git-prompt.sh
fi

# Git Deal or No Deal
alias dealodrome="git bisect"
alias deal="git bisect good"
alias no_deal="git bisect bad"


# Command prompt
# --------------------------------------------------

# CLI Output
export CLICOLOR='Yes'

# Prompt
PS1="${bd_black}\u${bd_white}@${bd_black}\h${bd_white}:${bd_cyan}\w${bd_white}\$(__git_ps1 "[%s]")${black}\$${reset} "