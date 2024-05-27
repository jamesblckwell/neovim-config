return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- lsp support
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        build = function()
            pcall(vim.cmd, 'MasonUpdate')
        end,
        'williamboman/mason-lspconfig.nvim',

        -- auto completion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
    },
    config = function()
        local lsp = require('lsp-zero').preset({})

        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
            lsp.buffer_autoformat()
        end)

        require('mason').setup({})
        require('mason-lspconfig').setup({
            -- Replace the language servers listed here
            -- with the ones you want to install
            ensure_installed = { 'tsserver', 'gopls', 'svelte' },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },
        })

        lsp.setup()
    end
}
