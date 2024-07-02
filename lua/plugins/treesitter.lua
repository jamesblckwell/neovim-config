return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    { 'nvim-treesitter/playground', lazy = true },
    config = function()
        local configs = require('nvim-treesitter.configs')
        configs.setup({
            ensure_installed = { "javascript", "typescript", "c", "lua", "rust" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                disable = { "html" },
                additional_vim_regex_hightlighting = true,
            }
        })
    end
}
