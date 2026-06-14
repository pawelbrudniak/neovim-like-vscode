return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		ft = {
			"markdown",
			"codecompanion",
		},
		opts = {
			render_modes = { "n", "c", "t" },
			heading = {
				enabled = true,
			},
			code = {
				enabled = true,
				sign = false,
				width = "block",
				right_pad = 1,
			},
			checkbox = {
				enabled = true,
			},
		},
		keys = {
			{
				"<leader>mp",
				"<cmd>RenderMarkdown toggle<CR>",
				desc = "Toggle Markdown render",
			},
		},
	},
}
