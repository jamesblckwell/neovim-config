return {
    "L3MON4D3/LuaSnip",
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
    version = "v2.*",
    build = "make install_jsregexp",
    config = function()
        local ls = require("luasnip")
        -- local types = require("luasnip.util.types")

        require('luasnip.loaders.from_vscode').lazy_load()

        ls.config.set_config({
            history = true,
            enable_autosnippets = true,
            updateevents = "TextChanged,TextChangedI",
        })

        vim.keymap.set({ "i", "s" }, "<c-k>", function()
            if ls.expand_or_jumpable() then
                ls.expand_or_jump()
            end
        end)
    end
}
