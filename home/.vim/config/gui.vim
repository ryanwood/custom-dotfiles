""""""""""""""""""""""""""""""""""""""""
"" GUI-specific settings
""""""""""""""""""""""""""""""""""""""""

" only execute the contents of this file if the GUI is in use.
if has("gui_running")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>

  " Start without the toolbar
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
  set guioptions-=b

  set guifont=Monaco:h11
  colorscheme github
 endif
