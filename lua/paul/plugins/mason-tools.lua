return {
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
            "mason-org/mason.nvim",
        },
        opts = {
            ensure_installed = {
                -- LSP servers
                "lua-language-server",
                "bash-language-server",
                "json-lsp",
                "yaml-language-server",
                "pyright",
                "typescript-language-server",
                "html-lsp",
                "css-lsp",

                -- Formatters
                "stylua",
                "shfmt",
                "black",
                "prettier",
            },

            auto_update = false,
            run_on_start = true,
            start_delay = 3000,
            debounce_hours = 24,
        },
    },
}
