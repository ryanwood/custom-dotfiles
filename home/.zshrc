# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"

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
plugins=(bundler cake cap cloudapp gem git git-flow github heroku osx pow powder ssh-agent rails3 vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Custom theme. No need to get it into oh-my-zsh core
PROMPT=$'%{$fg[yellow]%}%n@%m%{$reset_color%} in %{$fg[blue]%}%~%{$reset_color%} $(git_prompt_info)\
%{$reset_color%}∴ '

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

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

# Function for persisting SSH agent forwarding in a screen/tmux session after
# you've logged out and back into the server
#
# Source: http://www.tolaris.com/2011/07/12/reconnecting-your-ssh-agent-to-a-detached-gnu-screen-session/
function reload_ssh_sock() {
  export SSH_AUTH_SOCK=$(find /tmp/ssh-* -user `whoami` -name agent\* | tail -n 1)
}

# Local machine-specific configuration
if [ -f ~/.zshrc_local ]; then
  . ~/.zshrc_local
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
