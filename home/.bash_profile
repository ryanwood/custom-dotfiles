# Keep computer-specific things in .bashrc
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export PATH=":/usr/local/bin:/usr/local/sbin:$PATH"

# Colors
export CLICOLOR='true'
export PROMPT_COMMAND='PS1="\[\033[1;36m\]\[\033[1;40m\]\u@\h \[\033[1;37m\]\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\` ➞ \[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'
d=.dircolors
test -r $d && eval "$(dircolors $d)"

# Drupal helpers
export sam="sites/all/modules"
export sat="sites/all/themes"
