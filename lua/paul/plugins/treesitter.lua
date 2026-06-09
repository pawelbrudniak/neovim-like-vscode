return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
        lazy = false,
        config = function()
            local parsers = {
                "bash",
                "css",
                "html",
                "javascript",
                "json",
                "lua",
                "luadoc",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
            }

            require("nvim-treesitter").install(parsers)

            vim.api.nvim_create_autocmd("FileType", {
                group = vim.api.nvim_create_augroup("paul-treesitter", { clear = true }),
                callback = function(args)
                    local filetype = args.match
                    local language = vim.treesitter.language.get_lang(filetype)

                    if language and vim.treesitter.language.add(language) then
                        vim.treesitter.start(args.buf, language)
                        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                    end
                end,
            })
        end,
    },
}
