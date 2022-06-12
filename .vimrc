" Personal settings

set mouse=a
set number
set cc=81
hi ColorColumn ctermbg=lightgrey guibg=lightgrey
syntax on
set path+=**

" Syntastic default seting

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Overide vim sensible bundle :
runtime! plugin/sensible.vim

set softtabstop=0 noexpandtab
