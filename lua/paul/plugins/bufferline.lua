return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{
				"<Tab>",
				"<cmd>BufferLineCycleNext<CR>",
				desc = "Next buffer",
			},
			{
				"<S-Tab>",
				"<cmd>BufferLineCyclePrev<CR>",
				desc = "Previous buffer",
			},
		},
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					numbers = "none",
					close_command = "bdelete! %d",
					right_mouse_command = "bdelete! %d",
					left_mouse_command = "buffer %d",
					middle_mouse_command = nil,

					indicator = {
						style = "icon",
					},

					buffer_close_icon = "󰅖",
					modified_icon = "●",
					close_icon = "",
					left_trunc_marker = "",
					right_trunc_marker = "",

					max_name_length = 18,
					max_prefix_length = 15,
					truncate_names = true,

					diagnostics = "nvim_lsp",

					separator_style = "thin",
					always_show_bufferline = true,

					offsets = {
						{
							filetype = "neo-tree",
							text = "File Explorer",
							text_align = "center",
							separator = true,
						},
					},
				},
			})
		end,
	},
}
