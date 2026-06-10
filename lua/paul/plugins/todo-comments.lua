return {
    {
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        event = { "BufReadPost", "BufNewFile" },
        cmd = {
            "TodoTrouble",
            "TodoTelescope",
        },
        opts = {
            signs = true,
        },
        keys = {
            {
                "<leader>xt",
                "<cmd>TodoTrouble<CR>",
                desc = "TODO/FIXME list",
            },
        },
    },
}
