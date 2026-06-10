local keymap = vim.keymap.set

keymap("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

keymap("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split vertically" })
keymap("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split horizontally" })

keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

keymap("n", "<leader>e", "<cmd>Neotree filesystem reveal left toggle<CR>", { desc = "Toggle file explorer" })
keymap("n", "<leader>o", "<cmd>Neotree filesystem reveal left<CR>", { desc = "Open file explorer" })

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find text in project" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find open buffers" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Find help" })
keymap("n", "<leader>fc", "<cmd>Telescope commands<CR>", { desc = "Find commands" })
-- =======

-- Buffers / tabs
keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
-- =======
-- Terminal
keymap("n", "<leader>tt", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Toggle terminal horizontal" })
keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle terminal floating" })
keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=80<CR>", { desc = "Toggle terminal vertical" })

keymap("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
-- =======
