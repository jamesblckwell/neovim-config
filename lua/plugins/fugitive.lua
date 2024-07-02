return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]tatus" });
        vim.keymap.set("n", "<leader>gp", ':Git push<CR>', { desc = "[G]it [P]ush" });
        vim.keymap.set("n", "<leader>gca", ':Git commit -am ""<LEFT>', { desc = "[G]it [C]ommit [A]ll" });
        vim.keymap.set("n", "<leader>gcf", ':Git commit % -m ""<LEFT>', { desc = "[G]it [C]ommit [F]ile" });
    end
}
