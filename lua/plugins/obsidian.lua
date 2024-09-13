return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = {
        "BufReadPre /home/jamesb/Documents/bunsho/**.md",
        "BufNewFile /home/jamesb/Documents/bunsho/**.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
    },
    opts = {
        workspaces = {
            { name = "bunsho", path = "~/Documents/bunsho" },
        },

        completion = {
            nvim_cmp = true,
            min_chars = 2,
        },

        mappings = {
            -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
            ["gf"] = {
                action = function()
                    return require("obsidian").util.gf_passthrough()
                end,
                opts = { noremap = false, expr = true, buffer = true },
            },
            -- Toggle check-boxes.
            ["<leader>och"] = {
                action = function()
                    return require("obsidian").util.toggle_checkbox()
                end,
                opts = { buffer = true },
            },
            -- Smart action depending on context, either follow link or toggle checkbox.
            ["<cr>"] = {
                action = function()
                    return require("obsidian").util.smart_action()
                end,
                opts = { buffer = true, expr = true },
            }
        },

        new_notes_location = "notes_subdir",

        -- The following options are the default values.
        templates = {
            folder = "5. Meta/Templates",
            date_format = "%Y-%m-%d",
            time_format = "%H:%M",
        },

        attachments = {
            img_folder = "3. Archive/Files"
        },

        note_id_func = function(title)
            return title
        end,



    },
}
