return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                size = 15,
                open_mapping = [[<C-\>]],
                hide_numbers = true,
                shade_terminals = true,
                direction = "horizontal",
                close_on_exit = true,
                shell = vim.o.shell,
                float_opts = {
                    border = "curved",
                },
            })
        end,
    },
}
