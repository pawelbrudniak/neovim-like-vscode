local tools = require("paul.config.tools")
local ensure_installed = vim.list_extend(vim.deepcopy(tools.lsp_servers), tools.mason_tools)

return {
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
            "mason-org/mason.nvim",
        },
        opts = {
            ensure_installed = ensure_installed,

            auto_update = false,
            run_on_start = true,
            start_delay = 3000,
            debounce_hours = 24,
        },
    },
}
