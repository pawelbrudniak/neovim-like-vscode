local keymap = vim.keymap.set

keymap("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split vertically" })
keymap("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split horizontally" })

keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Buffers / tabs
keymap("n", "<leader>bd", "<cmd>confirm bdelete<CR>", { desc = "Close current buffer" })
