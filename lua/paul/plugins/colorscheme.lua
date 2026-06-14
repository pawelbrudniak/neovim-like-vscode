return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				terminal_colors = true,
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = false,
					comments = true,
					operators = false,
					folds = true,
				},
				contrast = "hard", -- "soft", "medium", "hard"
				transparent_mode = false,
			})

			vim.o.background = "dark"
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
