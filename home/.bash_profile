# Keep computer-specific things in .bashrc
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export PATH=":/usr/local/bin:/usr/local/sbin:$PATH"

# Colors
export CLICOLOR='true'
PS1="\[\033[0;33m\]\h \W λ \[\033[0m\]"
d=.dircolors
test -r $d && eval "$(dircolors $d)"

# Drupal helpers
export sam="sites/all/modules"
export sat="sites/all/themes"
