return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		keys = {
			{
				"<leader>tt",
				"<cmd>ToggleTerm direction=horizontal<CR>",
				desc = "Toggle terminal horizontal",
			},
			{
				"<leader>tf",
				"<cmd>ToggleTerm direction=float<CR>",
				desc = "Toggle terminal floating",
			},
			{
				"<leader>tv",
				"<cmd>ToggleTerm direction=vertical size=80<CR>",
				desc = "Toggle terminal vertical",
			},
		},
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
