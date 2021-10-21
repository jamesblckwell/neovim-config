"**********
" Plugins
"**********

" Append the <PLUGIN_SLUG> (as in, Plug '<PLUGIN_SLUG>') to
" https://github.com/ to see what the plugin does.
call plug#begin('~/.vim/plugged')
" General Dev
Plug 'itchyny/lightline.vim'            " Status line
Plug 'ludovicchabant/vim-gutentags'     " Gutentags
Plug 'itchyny/vim-gitbranch'            " Branch info for status line
Plug 'tpope/vim-fugitive'               " Git wrapper
Plug 'tpope/vim-commentary'             " Commenting
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'                 " Ultisnips
Plug 'honza/vim-snippets'               " Collection of ultisnips
Plug 'sheerun/vim-polyglot'             " Language packs
Plug 'preservim/nerdtree'               " NERDTree
Plug 'preservim/tagbar'                 " Tagbar
Plug 'tpope/vim-dadbod'                 " DB management
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" PHP Specific
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

" Laravel Specific
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'

" JS Specific
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" Markdown Specific
Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'rhysd/vim-grammarous'

" HTML Specific
Plug 'mattn/emmet-vim'

" Dev
Plug 'jamesblckwell/npm-vim'
call plug#end()


