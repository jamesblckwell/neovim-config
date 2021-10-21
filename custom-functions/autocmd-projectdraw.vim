" Run Netrw on launch 
augroup ProjectDrawer
   autocmd!
   " autocmd VimEnter * :Lex
   autocmd VimEnter * :NERDTree
   autocmd WinNew   * :wincmd =
   " If another buffer tries to replace NERDTree, put in the other window, and bring back NERDTree.
   autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | 
     \let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
   " Open the existing NERDTree on each new tab.
   autocmd BufWinEnter * silent NERDTreeMirror
 augroup END 

