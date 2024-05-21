return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end
        vim.fn.sign_define("DapBreakpoint", {text='🔴', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint'})
        vim.fn.sign_define("DapBreakpointRejected", {text='⚪️', texthl='DapBreakpointRejected', linehl='DapBreakpointRejected', numhl='DapBreakpointRejected'})
        vim.fn.sign_define("DapBreakpointCondition", {text='🔵', texthl='DapBreakpointCondition', linehl='DapBreakpointCondition', numhl='DapBreakpointCondition'})
        vim.fn.sign_define("DapLogPoint", {text='🟢', texthl='DapLogPoint', linehl='DapLogPoint', numhl='DapLogPoint'})

    end
}
