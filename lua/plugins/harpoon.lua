return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>ha", function() require("harpoon"):list():add() end,                                    { desc = "Add current file to Harpoon list" } },
        { "<leader>ht", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, { desc = "Toggle Harpoon quick menu" } },
        { "<leader>hq", function() require("harpoon"):list():select(1) end,                                { desc = "Select Harpoon list 1" } },
        { "<leader>hw", function() require("harpoon"):list():select(2) end,                                { desc = "Select Harpoon list 2" } },
        { "<leader>he", function() require("harpoon"):list():select(3) end,                                { desc = "Select Harpoon list 3" } },
        { "<leader>hr", function() require("harpoon"):list():select(4) end,                                { desc = "Select Harpoon list 4" } },
        { "<leader>hp", function() require("harpoon"):list():prev() end,                                   { desc = "Select previous buffer in Harpoon list" } },
        { "<leader>hn", function() require("harpoon"):list():next() end,                                   { desc = "Select next buffer in Harpoon list" } }
    },
    config = function()
        require("harpoon"):setup()
    end
}
