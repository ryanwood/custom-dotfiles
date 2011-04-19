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

  " Default gui color scheme
  color ir_black
  set guifont=Consolas\ for\ BBEdit:h12

  set lines=60
  set columns=180
 endif
