# Start configuration added by Zim install {{{
#
# User configuration sourced by login shells
#

# Initialize Zim
source ${ZIM_HOME}/login_init.zsh -q &!
# }}} End configuration added by Zim install

# Start configuration added by Zim install {{{
#
# User configuration sourced by login shells
#

# Initialize Zim
source ${ZIM_HOME}/login_init.zsh -q &!
# }}} End configuration added by Zim install

# Init Pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

