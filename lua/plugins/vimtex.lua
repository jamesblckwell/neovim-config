return {
    "lervag/vimtex",
    ft = { "tex", "latex" },
    dependencies = {
        "let-def/texpresso.nvim"
    },
    lazy = false,
    init = function()
        vim.g.tex_flavor = "latex"
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_quickfix_mode = 0
        vim.g.tex_conceal = "abdmg"
    end
}
