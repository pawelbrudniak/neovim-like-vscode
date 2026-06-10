return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{
				"<leader>ff",
				"<cmd>Telescope find_files<CR>",
				desc = "Find files",
			},
			{
				"<leader>fg",
				"<cmd>Telescope live_grep<CR>",
				desc = "Find text in project",
			},
			{
				"<leader>fb",
				"<cmd>Telescope buffers<CR>",
				desc = "Find open buffers",
			},
			{
				"<leader>fh",
				"<cmd>Telescope help_tags<CR>",
				desc = "Find help",
			},
			{
				"<leader>fc",
				"<cmd>Telescope commands<CR>",
				desc = "Find commands",
			},
		},
		config = function()
			local telescope = require("telescope")

			telescope.setup({
				defaults = {
					path_display = { "truncate" },
					mappings = {
						i = {
							["<Esc>"] = require("telescope.actions").close,
						},
					},
				},
				pickers = {
					find_files = {
						hidden = true,
					},
				},
			})
		end,
	},
}
