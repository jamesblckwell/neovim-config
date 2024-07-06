return {
    'tpope/vim-fugitive',
    cmd = "Git",
    keys = {
        { "<leader>gs",  ":Git<CR>",                  { desc = "[G]it [S]tatus" } },
        { "<leader>gp",  ":Git push<CR>",             { desc = "[G]it [P]ush" } },
        { "<leader>gca", ":Git commit -am ''<LEFT>",  { desc = "[G]it [C]ommit [A]ll" } },
        { "<leader>gcf", ":Git commit % -m ''<LEFT>", { desc = "[G]it [C]ommit [F]ile" } },
        { "<leader>ga",  ":Git add %<CR>",            { desc = "[G]it [A]dd" } }
        { "<leader>gb",  ":Git blame %<CR>",          { desc = "[G]it [B]lame" } }
        { "<leader>gl",  ":Git log<CR>",              { desc = "[G]it [L]og" } }
    }
}
