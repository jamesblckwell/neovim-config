"***********
" Keymaps
"***********

" After a search, press enter to remove syntax highlighting
nnoremap <CR> :noh<CR><CR>

" Goto using COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Do code action
nmap <silent> do <Plug>(coc-codeaction)

" Open tagbar
nmap <silent> tb :CocOutline<CR>

" Finders
nmap <silent> ff :Telescope find_files<cr>
nmap <silent> fa :Rg<cr>
nmap <silent> fb :Buffers<cr>
nmap <silent> fl :Lines<cr>

" Git
nmap gcf :Git commit % -m ""<left>
nmap gca :Git commit -am ""<left>
nmap <silent> gs :Git status<cr>
nmap <silent> gp :Git push<cr>
