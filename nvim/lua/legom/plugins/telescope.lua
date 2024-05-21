return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {"nvim-telescope/telescope-fzf-native.nvim", build="make"},
        "nvim-tree/nvim-web-devicons",
    },
    config = function() 
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require('telescope.builtin')

        telescope.setup({
             defaults = {                    
                 path_display = {"smart"},
            
                    mappings = {
                        i = {
                            ["<C-k>"] = actions.move_selection_previous,
                            ["<C-j>"] = actions.move_selection_next,
                            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                        },
                    },
            },
        })
        telescope.load_extension("fzf")         
        local km = vim.keymap

        km.set('n', '<leader>of', "<cmd>Telescope find_files<CR>", {})           
        km.set('n', '<leader>os', "<cmd>Telescope live_grep<CR>", {})
        km.set('n', '<leader>ow', "<cmd>Telescope grep_string<CR>", {})
    end
}
