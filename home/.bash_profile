# Keep computer-specific things in .bashrc
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export PATH=":/usr/local/bin:/usr/local/sbin:$PATH"

# Colors
export CLICOLOR='true'
PS1='\r\n\[\033[0;35m\]\u@\H\[\033[0m\] in \[\033[34m\]\w\[\033[37m\]\r\n∴ \[\033[0m\]'
d=.dircolors
test -r $d && eval "$(dircolors $d)"

# Drupal helpers
export sam="sites/all/modules"
export sat="sites/all/themes"
