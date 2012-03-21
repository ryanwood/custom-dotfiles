" Move between split windows by using leader key
nnoremap <silent> <Leader>h <C-w>h
nnoremap <silent> <Leader>l <C-w>l
nnoremap <silent> <Leader>k <C-w>k
nnoremap <silent> <Leader>j <C-w>j

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Resize vertical windows by hitting plus and minus
nnoremap <silent> + <C-w>+
nnoremap <silent> - <C-w>-

" Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

" Arpeggio lets us define key-chord combos (simultaneous key presses)
call arpeggio#load()

" Use the two first fingers on both sides of the keyboard
" simultaneously to go to the beginning or end of line
Arpeggio nnoremap jk $
Arpeggio nnoremap fd ^

" Use last two fingers on left hand to <esc>
imap <C-j> <ESC>

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Toggle paste with <leader>sp
nmap <leader>sp :set paste! paste?<CR>

" Bubble single lines
nmap <C-k> [e
nmap <C-j> ]e

" Bubble multiple lines
vmap <C-k> [egv
vmap <C-j> ]egv
