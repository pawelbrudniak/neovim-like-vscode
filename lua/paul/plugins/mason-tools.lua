local tools = require("paul.config.tools")

return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"mason-org/mason.nvim",
		},
		opts = {
			ensure_installed = tools.mason_tools,

			auto_update = false,
			run_on_start = true,
			start_delay = 3000,
			debounce_hours = 24,
		},
	},
}
