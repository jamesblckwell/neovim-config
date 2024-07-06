return {
    'mtth/scratch.vim',
    cmd = "Scratch",
    keys = {
        { "<leader>s", "<cmd>Scratch<cr>", desc = "[S]cratch" },
    },
    config = function()
        vim.g.scratch_persistence_file = ".scratch"
    end
}
