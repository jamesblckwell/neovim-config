return {
    'sho-87/kanagawa-paper.nvim',
    -- 'junegunn/seoul256.vim',
    as = 'colors',
    priority = 1000,
    config = function()
        -- vim.g.seoul256_background = 233
        -- vim.cmd('colorscheme seoul256')
        vim.cmd('colorscheme kanagawa-paper')
    end
}
