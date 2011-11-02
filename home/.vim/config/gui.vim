""""""""""""""""""""""""""""""""""""""""
"" GUI-specific settings
""""""""""""""""""""""""""""""""""""""""

" only execute the contents of this file if the GUI is in use.
if has("gui_running")
  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>

  " Start without the toolbar and scrollbars
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
  set guioptions-=b

  set guifont=Ubuntu\ Mono:h15
  set linespace=2

 endif
