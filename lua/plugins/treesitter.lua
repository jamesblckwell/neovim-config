return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        branch = "main",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            branch = "main"
        },
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                "lua",
                "go",
                "html",
                "javascript",
                "typescript",
                "astro",
                "markdown",
                "markdown_inline"
            }
        }
    }
}
