"""""""""""""""""""""""""""""""""""""""""""""""""""
"" loads display-related option (colorscheme, etc.)
"""""""""""""""""""""""""""""""""""""""""""""""""""

" make csapprox stop whining in less capable VIMs
if &t_Co < 88 || !has('gui')
  let g:CSApprox_loaded=1
  let g:CSApprox_verbose_level=0
endif

colorscheme solarized
set background=light
set colorcolumn=+1
if has('cursorline')
  set cursorline
endif

" fold method
set foldmethod=marker

set laststatus=2   " always display a status line
set number         " show line numbers
set ruler          " display coordinates in status bar
set showcmd        " display unfinished commands
set showmatch      " show matching bracket (briefly jump)
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
