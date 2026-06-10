return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-neotest/neotest-python",
        },
        config = function()
            require("neotest").setup({
                adapters = {
                    require("neotest-python")({
                        runner = "pytest",
                    }),
                },
            })
        end,
        keys = {
            {
                "<leader>rt",
                function()
                    require("neotest").run.run()
                end,
                desc = "Run nearest test",
            },
            {
                "<leader>rf",
                function()
                    require("neotest").run.run(vim.fn.expand("%"))
                end,
                desc = "Run current test file",
            },
            {
                "<leader>ra",
                function()
                    require("neotest").run.run(vim.fn.getcwd())
                end,
                desc = "Run all tests",
            },
            {
                "<leader>rl",
                function()
                    require("neotest").run.run_last()
                end,
                desc = "Run last test",
            },
            {
                "<leader>rs",
                function()
                    require("neotest").summary.toggle()
                end,
                desc = "Toggle test summary",
            },
            {
                "<leader>ro",
                function()
                    require("neotest").output.open({ enter = true })
                end,
                desc = "Open test output",
            },
        },
    },
}
