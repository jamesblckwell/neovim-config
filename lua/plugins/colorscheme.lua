return {
    'junegunn/seoul256.vim',
    as = 'colors',
    config = function()
        vim.g.seoul256_background = 233
        vim.cmd('colorscheme seoul256')
    end
}
