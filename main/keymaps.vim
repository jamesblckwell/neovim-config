"***********
" Keymaps
"***********

" After a search, press enter to remove syntax highlighting
nnoremap <CR> :noh<CR><CR>

" Goto using COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Do code action
nmap <silent> do <Plug>(coc-codeaction)

" Open tagbar
nmap <silent> tb :TagbarToggle<CR>
