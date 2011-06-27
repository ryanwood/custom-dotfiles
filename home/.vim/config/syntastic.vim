""""""""""""""""""""""""""""""""""""""""
"" Syntastic-specific config settings
""""""""""""""""""""""""""""""""""""""""

" use signs to indicate lines with errors
" only if signs are available
if has('signs')
   let g:syntastic_enable_signs = 1
endif

" automatically open the location list when a buffer has errors
let g:syntastic_auto_loc_list=1

" always show warnings
let g:syntastic_quiet_warnings=0

" Shows really stupid stuff as errors (esp in HTML5)
" so, we're turning it off
let g:syntastic_disabled_filetypes = ['html', 'cucumber', 'coffee']
