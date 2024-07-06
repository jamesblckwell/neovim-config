return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "debugloop/telescope-undo.nvim",
        "benfowler/telescope-luasnip.nvim",
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "[F]ind [F]iles" })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "[F]ind [H]elp" })
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "[F]ind [K]eymaps" })
        vim.keymap.set('n', '<leader>fw', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "[F]ind [W]ord" })

        require('telescope').load_extension('undo')
        vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>", { desc = "[U]ndotree" })

        require('telescope').load_extension('luasnip')
        vim.keymap.set('n', '<leader>fs', '<cmd>Telescope luasnip<cr>', { desc = "[F]ind [S]nippet" })
    end
}
