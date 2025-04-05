return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        'williamboman/mason.nvim',
        "theHamsta/nvim-dap-virtual-text",
    },
    keys = {
        { "<leader>db",  ":DapToggleBreakpoint<CR>",                    { desc = "[D]ap toggle [B]reakpoint" } },
        { "<leader>dbc", ":DapClearBreakpoints<CR>",                    { desc = "[D]ap [B]reakpoints [C]lear" } },
        { "<leader>drc", function() require("dap").run_to_cursor() end, { desc = "[D]ap [R]un to [C]ursor" } },

    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        require("dapui").setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
    end
}
