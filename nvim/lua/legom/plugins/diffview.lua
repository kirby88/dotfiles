return {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    keys = {
        { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git diff" },
        { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
    },
}
