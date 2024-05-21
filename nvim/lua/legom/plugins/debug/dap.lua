return {
    "mfussenegger/nvim-dap",
    config = function()
        local km = vim.keymap
        km.set('n', '<F7>', ":DapTerminate<CR>", {})
        km.set('n', '<F8>', ":DapContinue<CR>", {})
        km.set('n', '<F9>', ":DapStepOver<CR>", {})
        km.set('n', '<F10>', ":DapStepInto<CR>", {})
        km.set('n', '<F11>', ":DapStepOut<CR>", {})
        km.set("n", "<leader>db", ":lua require('dap').toggle_breakpoint()<CR>", {}) -- show definition, references
        km.set("n", "<leader>dc", ":lua require('dap').toggle_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>", {}) -- show definition, references
        km.set("n", "<leader>dl", ":lua require('dap').toggle_breakpoint(None, None, vim.fn.input('Log message: '))<CR>", {}) -- show definition, references
    end
}
