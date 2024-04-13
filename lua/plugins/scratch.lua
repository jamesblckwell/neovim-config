return {
    'mtth/scratch.vim',
    config = function()
        vim.g.scratch_persistence_file = ".scratch"
        vim.keymap.set('n', '<leader>s', vim.cmd.Scratch);
    end
}
