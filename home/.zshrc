# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rickharris"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler cake cap cloudapp gem git git-flow github heroku osx pow powder rails3 vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# OMZ ssh-agent forwarding. Adds compatibility for screen/tmux
zstyle :omz:plugins:ssh-agent agent-forwarding on

# /usr/local/bin has priority in PATH
export PATH="/usr/local/bin:$PATH"

# Colors
export LS_OPTIONS="--color=auto"
export CLICOLOR="Yes"
export LSCOLORS="exgxfxfxcxdxdxhbadbxbx"

# Drupal helpers
export sam="sites/all/modules"
export sat="sites/all/themes"

# Server helpers
if [ -f ~/.server_aliases ]; then
  . ~/.server_aliases
fi

# Use vim for EVERYTHING
export EDITOR="vim"
export SVN_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR

# Local machine-specific configuration
if [ -f ~/.zshrc_local ]; then
  . ~/.zshrc_local
fi
