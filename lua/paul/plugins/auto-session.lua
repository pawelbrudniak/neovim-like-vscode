return {
    {
        "rmagatti/auto-session",
        lazy = false,
        opts = {
            auto_save = true,
            auto_restore = true,
            auto_create = true,

            suppressed_dirs = {
                "~/",
                "~/Pobrane",
                "~/Downloads",
                "~/tmp",
                "/tmp",
            },

            pre_save_cmds = {
                "Neotree close",
            },
        },
        keys = {
            {
                "<leader>ss",
                "<cmd>AutoSession save<CR>",
                desc = "Save session",
            },
            {
                "<leader>sr",
                "<cmd>AutoSession restore<CR>",
                desc = "Restore session",
            },
            {
                "<leader>sd",
                "<cmd>AutoSession delete<CR>",
                desc = "Delete session",
            },
        },
    },
}
