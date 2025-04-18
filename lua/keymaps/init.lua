-- General

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader><leader>d", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Autocommands

-- Markdown files
vim.api.nvim_create_autocmd("BufReadPre", {
    pattern = "*.md",
    callback = function()
        vim.opt_local.textwidth = 80
        vim.opt_local.spell = true
        vim.opt_local.spelllang = { "en_gb" }
    end,
})
