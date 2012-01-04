""""""""""""""""""""""""""""""""""""""""
"" Keyboard-command related settings.
"" does not contain plugin-specific
"" settings, just 'global' ones.
""""""""""""""""""""""""""""""""""""""""

" ;w saves a buffer
map <Leader>w :w!<CR>
map <Leader>q :q<CR>

" navigate among windows using ;[hjkl]
" map <Leader>h <C-W>h
" map <Leader>j <C-W>j
" map <Leader>k <C-W>k
" map <Leader>l <C-W>l

" use C-j and C-k to 'bubble' lines (see
" http://vimcasts.org/episodes/bubbling-text/)
map <C-j> ddp
map <C-k> ddkP
