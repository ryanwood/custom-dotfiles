PROMPT=$'%{$fg[yellow]%}%n@%m%{$reset_color%} in %{$fg[blue]%}%~%{$reset_color%} $(git_prompt_info)\
%{$reset_color%}∴ '

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
