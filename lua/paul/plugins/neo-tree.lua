return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true,
                popup_border_style = "rounded",

                filesystem = {
                    follow_current_file = {
                        enabled = true,
                    },
                    use_libuv_file_watcher = true,
                    filtered_items = {
                        visible = true,
                        hide_dotfiles = false,
                        hide_gitignored = false,
                    },
                },

                window = {
                    position = "left",
                    width = 32,
                    mappings = {
                        ["<space>"] = "none",
                    },
                },
            })
        end,
    },
}
