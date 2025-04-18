return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        theme = require("lualine.themes.kanagawa-paper-ink"),
        extensions = { "mason", "oil", "toggleterm", "quickfix" },
    },
}
