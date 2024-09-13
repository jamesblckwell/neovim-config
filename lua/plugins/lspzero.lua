return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        -- lsp support
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        build = function()
            --@diagnostic disable-next-line: undefined-global
            pcall(vim.cmd, 'MasonUpdate')
        end,
        'williamboman/mason-lspconfig.nvim',

        -- auto completion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'f3fora/cmp-spell',

        -- snippets
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets',

        -- autoformat
        'stevearc/conform.nvim',

        -- status
        { "j-hui/fidget.nvim", opts = {} }

    },
    config = function()
        local lsp = require('lsp-zero').preset({})

        lsp.on_attach(function(_, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
            vim.keymap.set('n', "<leader>gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })
            vim.keymap.set('n', "<leader>gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Go to references" })
            vim.keymap.set('n', "<leader>gD", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to declaration" })
            vim.keymap.set('n', "<leader>gT", vim.lsp.buf.type_definition,
                { buffer = bufnr, desc = "Go to type definition" })
            vim.keymap.set('n', "<leader>K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Go to implementation" })
            vim.keymap.set('n', "<leader>cr", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename" })
            vim.keymap.set('n', "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code action" })
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

        lsp.set_sign_icons({
            error = '✘',
            warn = '▲',
            hint = '⚑',
            info = '»'
        })

        -- Autoformatting Setup
        require("conform").setup {
            formatters_by_ft = {
                lua = { "stylua" },
            },
        }

        local cmp = require('cmp')
        local cmp_action = lsp.cmp_action()

        cmp.setup({
            sources = {
                { name = 'path' },
                { name = 'nvim_lsp' },
                { name = 'luasnip', keyword_length = 2 },
                { name = 'buffer',  keyword_length = 3 },
                { name = 'spell',   keyword_length = 3 }
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                -- confirm completion item
                ['<Enter>'] = cmp.mapping.confirm({ select = true }),

                -- trigger completion menu
                ['<C-Space>'] = cmp.mapping.complete(),

                -- scroll up and down the documentation window
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
            }),
            -- note: if you are going to use lsp-kind (another plugin)
            -- replace the line below with the function from lsp-kind
            formatting = lsp.cmp_format({ details = true }),
        })

        -- setup completion for vim-dadbod
        cmp.setup.filetype({ "sql" }, {
            sources = {
                { name = "vim-dadbod-completion" },
                { name = "buffer" }
            }
        })
    end
}
