return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "│" },
                    change = { text = "│" },
                    delete = { text = "_" },
                    topdelete = { text = "‾" },
                    changedelete = { text = "~" },
                    untracked = { text = "┆" },
                },

                signs_staged = {
                    add = { text = "┃" },
                    change = { text = "┃" },
                    delete = { text = "_" },
                    topdelete = { text = "‾" },
                    changedelete = { text = "~" },
                    untracked = { text = "┆" },
                },

                current_line_blame = false,
                current_line_blame_opts = {
                    delay = 500,
                    virt_text_pos = "eol",
                },

                on_attach = function(bufnr)
                    local gitsigns = require("gitsigns")

                    local function map(mode, lhs, rhs, desc)
                        vim.keymap.set(mode, lhs, rhs, {
                            buffer = bufnr,
                            desc = desc,
                        })
                    end

                    map("n", "]g", gitsigns.next_hunk, "Next Git hunk")
                    map("n", "[g", gitsigns.prev_hunk, "Previous Git hunk")

                    map("n", "<leader>gp", gitsigns.preview_hunk, "Preview Git hunk")
                    map("n", "<leader>gr", gitsigns.reset_hunk, "Reset Git hunk")
                    map("n", "<leader>gs", gitsigns.stage_hunk, "Stage Git hunk")
                    map("n", "<leader>gu", gitsigns.undo_stage_hunk, "Undo stage Git hunk")

                    map("n", "<leader>gR", gitsigns.reset_buffer, "Reset Git buffer")
                    map("n", "<leader>gS", gitsigns.stage_buffer, "Stage Git buffer")

                    map("n", "<leader>gb", gitsigns.blame_line, "Git blame line")
                    map("n", "<leader>gB", function()
                        gitsigns.toggle_current_line_blame()
                    end, "Toggle Git blame")

                    map("n", "<leader>gd", gitsigns.diffthis, "Git diff this file")
                end,
            })
        end,
    },
}
