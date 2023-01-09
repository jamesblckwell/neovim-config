" Lightline bar config
let g:lightline = {
    \'colorscheme': 'jellybeans',
    \'active': {
    \   'left': [ ['mode', 'paste'],
    \          [ 'gitbranch', 'readonly', 'LightlineFilename', 'modified', 'coc_ok', 'coc_errors'] ] 
    \},
    \'inactive': {
    \   'left': [['LightlineFilename', 'modified']]
    \},
    \'component_function': {
    \   'gitbranch': 'FugitiveHead',
    \   'LightlineFilename': 'VimLightlineFilename'
    \}
    \}

function! VimLightlineFilename()
    if !empty(expand("%:h"))
        \| return remove(split(expand("%:h"), "/"), -1) . "/" . expand("%:t") 
        \| else 
        \| return expand("%:t")
        \| endif
endfunction

set statusline+=%{gutentags#statusline()}

" Mode is already shown in Lightline - so it doesn't need to appear again
set noshowmode

" Register coc integrations
call lightline#coc#register()
