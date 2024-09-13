return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "debugloop/telescope-undo.nvim",
        "benfowler/telescope-luasnip.nvim",
    },
    cmd = "Telescope",
    keys = {
        { '<leader>ff', require('telescope.builtin').find_files, { desc = "[F]ind [F]iles" } },
        { '<leader>fh', require('telescope.builtin').help_tags,  { desc = "[F]ind [H]elp" } },
        { '<leader>fk', require('telescope.builtin').keymaps,    { desc = "[F]ind [K]eymaps" } },
        { '<leader>fw', function()
            require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "[F]ind [W]ord" } },
        { '<leader>ft', function()
            require('telescope.builtin').grep_string({ search = "TODO" })
        end, { desc = "[F]ind [T]odo" } },
        { '<leader>u',  "<cmd>Telescope undo<cr>",    { desc = "[U]ndotree" } },
        { '<leader>fs', '<cmd>Telescope luasnip<cr>', { desc = "[F]ind [S]nippet" } },
    },
    config = function()
        require('telescope').load_extension('undo')
        require('telescope').load_extension('luasnip')
    end
}
