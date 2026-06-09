return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        keys = {
            {
                "<leader>lf",
                function()
                    require("conform").format({
                        async = true,
                        lsp_format = "fallback",
                    })
                end,
                mode = "",
                desc = "Format file",
            },
        },
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                bash = { "shfmt" },
                sh = { "shfmt" },
                python = { "black" },

                javascript = { "prettier" },
                javascriptreact = { "prettier" },
                typescript = { "prettier" },
                typescriptreact = { "prettier" },

                html = { "prettier" },
                css = { "prettier" },
                scss = { "prettier" },
                json = { "prettier" },
                jsonc = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
            },

            format_on_save = {
                timeout_ms = 1000,
                lsp_format = "fallback",
            },
        },
    },
}
