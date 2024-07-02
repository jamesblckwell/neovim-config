return {
    'akinsho/toggleterm.nvim',
    cmd = "ToggleTerm",
    keys = {
        { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "[T]erminal" },
    },
    config = function()
        require('toggleterm').setup {
            size = 8
        }
    end
}
