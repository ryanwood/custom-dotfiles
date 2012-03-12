let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\.sass-cache$'

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = '<Leader>t'

" Additional mapping for buffer search
nnoremap <Leader>b :CtrlPBuffer<cr>
