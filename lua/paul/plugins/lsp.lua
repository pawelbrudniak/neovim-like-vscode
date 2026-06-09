return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
        },
        opts = {
            ensure_installed = {
                "lua_ls",
                "bashls",
                "jsonls",
                "yamlls",
                "pyright",
                "ts_ls",
                "html",
                "cssls",
            },
            automatic_enable = true,
        },
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            vim.lsp.config("*", {
                capabilities = capabilities,
            })
        end,
    },
}
