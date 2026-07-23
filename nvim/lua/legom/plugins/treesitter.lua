return {
    "nvim-treesitter/nvim-treesitter",
    event = {"BufReadPre", "BufNewFile"},
    build = ":TSUpdate",
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects'
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            -- enable syntax highlighting
            highlight = {
                enable = true,
            },
            -- enable indentation
            indent = {enable = true},
            -- enable - with nvim-ts-autotagging
            ensure_installed = {
                "json",
                "lua",
                "python",
                "c",
                "cpp",
                "gitignore",
                "gitcommit",
                "hack",
                "javascript",
                "html",
                "latex",
                "markdown",
                "objc",
                "python",
                "regex",
                "rust",
                "sql",
                "swift",
                "yaml",
            },
            textobjects = {
                select = {
                  enable = true,
                  lookahead = true,
                  keymaps = {
                    -- You can use the capture groups defined in textobjects.scm
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@class.outer',
                    ['ic'] = '@class.inner',
                  },
                },
            },
        })
    end
}
