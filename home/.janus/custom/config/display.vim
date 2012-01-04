"""""""""""""""""""""""""""""""""""""""""""""""""""
"" loads display-related option (colorscheme, etc.)
"""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme railscasts

if exists('+colorcolumn')
  set colorcolumn=80
endif

" status bar
set statusline=%<                                             " truncate@start
set statusline+=%f\                                           " filename
set statusline+=[%{strlen(&ft)?&ft:'none'}]                   " filetype
set statusline+=%h%m%r%w                                      " flags
set statusline+=%=                                            " right align
set statusline+=%{fugitive#statusline()}                      " git status
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " rvm status
set statusline+=(%l,%c%V)\ %<%P                               " offset
