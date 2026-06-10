if vim.fn.has("nvim-0.11") == 0 then
	error("This configuration requires Neovim 0.11 or newer")
end

require("paul.core.options")
require("paul.core.keymaps")
require("paul.core.lsp")
require("paul.config.lazy")
