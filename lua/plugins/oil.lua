return {
    'stevearc/oil.nvim',
    opts = {
        view_options = {
            show_hidden = true,
        }
    },
    keys = {
        { '<leader><leader>d', ":Oil<CR>", { desc = "Open directory viewer" } }
    },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
