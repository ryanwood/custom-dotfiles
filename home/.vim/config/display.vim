"""""""""""""""""""""""""""""""""""""""""""""""""""
"" loads display-related option (colorscheme, etc.)
"""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme solarized
set bg=dark

" Coffeescript '@' variables marked as "Special" by default, which means they
" are a super in your face red color. Let's treat them like ruby instance
" variables, which are considered identifiers
hi link coffeeSpecialVar Identifier

if exists('+colorcolumn')
  set colorcolumn=81
endif
set cursorline

" fold method
set foldmethod=marker

set laststatus=2   " always display a status line
set number         " show line numbers
set ruler          " display coordinates in status bar
set showcmd        " display unfinished commands
set showmode       " display the current mode in the status bar
set title          " show file in titlebar

" status bar
set statusline=%<                                             " truncate@start
set statusline+=%f\                                           " filename
set statusline+=[%{strlen(&ft)?&ft:'none'}]                   " filetype
set statusline+=%h%m%r%w                                      " flags
set statusline+=%=                                            " right align
set statusline+=%{fugitive#statusline()}                      " git status
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " rvm status
set statusline+=(%l,%c%V)\ %<%P                               " offset
