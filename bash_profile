alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Simple Python Server 
# --------------------------------------------------

function server() {
    local port="${1:-8000}"
    open "http://localhost:${port}/"
    python -m SimpleHTTPServer "$port"
}

# Git
# --------------------------------------------------

# Git completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# Git prompt
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
fi

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

# CLI Output
export CLICOLOR=1
export MAVEN_OPTS="-Xms1024m -Xmx1024m -XX:PermSize=1024m"

# export P4CONFIG=$HOME/p4settings.txt

# Prompt
PS1="${bd_purple}\u${bd_white}@${bd_purple}\h${bd_white}:${bd_cyan}\w${bd_yellow}\$(__git_ps1 "[%s]")${white}\$${reset} "

# nvm
source ~/.nvm/nvm.sh

#!/bin/bash
#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/croberts/.gvm/bin/gvm-init.sh" ]] && source "/Users/croberts/.gvm/bin/gvm-init.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
