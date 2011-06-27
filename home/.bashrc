export PATH=":/usr/local/bin:/usr/local/sbin:$PATH"

# Colors
export LS_OPTIONS="--color=auto"
export CLICOLOR="Yes"
export LSCOLORS="exfxfxfxcxdxdxhbadbxbx"

# Prompt
PS1='\n\[\033[0;35m\]\u@\H\[\033[0m\] in \[\033[34m\]\w\[\033[32m\]`__git_ps1` \n\[\033[37m\]∴ \[\033[0m\]'

# Drupal helpers
export sam="sites/all/modules"
export sat="sites/all/themes"

# Server helpers
if [ -f ~/.server_aliases ]; then
  . ~/.server_aliases
fi

# Git completion
if [ -f ~/.git_completion ]; then
  . ~/.git_completion
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
