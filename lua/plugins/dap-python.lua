return {
    "mfussenegger/nvim-dap-python",
    dependencies = {
        "mfussenegger/nvim-dap"
    },
    keys = {
        { "<leader>dpr", function() require('dap-python').test_method() end, { desc = "[D]ap [P]ython [R]un" } }
    },
    config = function(_, opts)
        local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
        require("dap-python").setup(path)
    end
}
