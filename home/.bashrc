export PATH=":/usr/local/bin:/usr/local/sbin:$PATH"

# Colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

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

# Bash completion, homebrew style
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# New and improved ls and dircolors
alias ls="gls --color"
alias dircolors="gdircolors"

# Gitflow shortcut
alias gf="git-flow"

# Python, homebrew style
export PATH="/usr/local/Cellar/python/2.7.1/bin:$PATH"

# Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
