return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            local telescope = require("telescope")

            telescope.setup({
                defaults = {
                    path_display = { "truncate" },
                    mappings = {
                        i = {
                            ["<Esc>"] = require("telescope.actions").close,
                        },
                    },
                },
                pickers = {
                    find_files = {
                        hidden = true,
                    },
                },
            })
        end,
    },
}
