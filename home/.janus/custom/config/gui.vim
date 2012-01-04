""""""""""""""""""""""""""""""""""""""""
"" GUI-specific settings
""""""""""""""""""""""""""""""""""""""""

" only execute the contents of this file if the GUI is in use.
if has("gui_running")

  " Start without the toolbar and scrollbars
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
  set guioptions-=b

  set guifont=Monaco:h13
  colo solarized
  set bg=light
 endif
