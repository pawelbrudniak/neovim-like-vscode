return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "modern",
			delay = 300,
			icons = {
				mappings = true,
			},
		},
		config = function(_, opts)
			local wk = require("which-key")
			wk.setup(opts)

			wk.add({
				{ "<leader>e", desc = "Toggle file explorer" },
				{ "<leader>o", desc = "Open file explorer" },

				{ "<leader>f", group = "Find" },
				{ "<leader>ff", desc = "Find files" },
				{ "<leader>fg", desc = "Find text in project" },
				{ "<leader>fb", desc = "Find open buffers" },
				{ "<leader>fh", desc = "Find help" },
				{ "<leader>fc", desc = "Find commands" },

				{ "<leader>l", group = "LSP / Format" },
				{ "<leader>lf", desc = "Format file" },

				{ "<leader>r", group = "Refactor" },
				{ "<leader>rn", desc = "Rename symbol" },

				{ "<leader>c", group = "Code" },
				{ "<leader>ca", desc = "Code action" },

				{ "<leader>d", desc = "Show diagnostic" },

				{ "<leader>s", group = "Split" },
				{ "<leader>sv", desc = "Split vertically" },
				{ "<leader>sh", desc = "Split horizontally" },

				{ "<leader>w", desc = "Save file" },
				{ "<leader>q", desc = "Quit" },
				{ "<leader>x", desc = "Close buffer" },
				{ "<leader>g", group = "Git" },
				{ "<leader>gg", desc = "Open LazyGit" },
				{ "<leader>gG", desc = "Open LazyGit current file" },
				{ "<leader>gp", desc = "Preview Git hunk" },
				{ "<leader>gr", desc = "Reset Git hunk" },
				{ "<leader>gs", desc = "Stage Git hunk" },
				{ "<leader>gu", desc = "Undo stage Git hunk" },
				{ "<leader>gR", desc = "Reset Git buffer" },
				{ "<leader>gS", desc = "Stage Git buffer" },
				{ "<leader>gb", desc = "Git blame line" },
				{ "<leader>gB", desc = "Toggle Git blame" },
				{ "<leader>gd", desc = "Git diff this file" },
				{ "<leader>t", group = "Terminal" },
				{ "<leader>tt", desc = "Terminal horizontal" },
				{ "<leader>tf", desc = "Terminal floating" },
				{ "<leader>tv", desc = "Terminal vertical" },
			})
		end,
	},
}
