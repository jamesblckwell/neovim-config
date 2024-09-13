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

        require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/lua/snippets" } })
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
        end, { silent = true, desc = "LuaSnip: Expand or Jump forward" })

        vim.keymap.set({ "i", "s" }, "<c-j>", function()
            if ls.jumpable(-1) then
                ls.jump(-1)
            end
        end, { silent = true, desc = "LuaSnip: Jump backward" })

        vim.keymap.set({ "i", "s" }, "<c-l>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, { desc = "LuaSnip: List options" })

        vim.keymap.set("n", "<leader><leader>k", "<cmd>source ~/.config/nvim/lua/plugins/luasnip.lua<cr>",
            { silent = true, desc = "LuaSnip: Reload snippets" })
    end
}
