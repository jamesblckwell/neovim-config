return {
    "rmagatti/auto-session",
    opts = {
        suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
        close_filetypes_on_save = { "sidekick_terminal" },
        pre_save_cmds = {
            function()
                require("sidekick.cli").close()
            end
        }
    },
}
