# Start configuration added by Zim install {{{
#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}
# }}} End configuration added by Zim install

# Start configuration added by Zim install {{{
#
# User configuration sourced by all invocations of the shell
#

# Define Zim location
: ${ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim}
# }}} End configuration added by Zim install

#VARIABLES
export PYENV_ROOT="$HOME/.pyenv"

# BIN
export PATH=/opt/nodejs/node-v12.16.2-linux-x64/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PYENV_ROOT/bin:$PATH

 #Alias
alias gts="git status"
alias gta="git add ."
alias gtc="git commit"
alias l="ls -la"
alias vim="nvim"
