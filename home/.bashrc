export PATH=":/usr/local/bin:/usr/local/sbin:$PATH"

# Colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls --color'

# Prompt
PS1='\r\n\[\033[0;35m\]\u@\H\[\033[0m\] in \[\033[34m\]\w\[\033[37m\]\r\n∴ \[\033[0m\]'

# Drupal helpers
export sam="sites/all/modules"
export sat="sites/all/themes"

# Server helpers
if [ -f ~/.server_aliases ]; then
  . .server_aliases
fi

# Use vim for EVERYTHING
export EDITOR="vim"
export SVN_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR

# Gitflow shortcut
alias gf="git-flow"

# Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
