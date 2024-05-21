return {
    "nvim-treesitter/nvim-treesitter",
    event = {"BufReadPre", "BufNewFile"},
    build = ":TSUpdate",
    dependencies = {
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
            }
        })
    end
}
