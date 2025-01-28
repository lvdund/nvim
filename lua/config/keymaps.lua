-- Keymap helper
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("n", ";", ":", opts)
map("i", "jk", "<ESC>", opts)

-- General keymaps
map("n", "<C-left>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-right>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-down>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-up>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

map("n", "dw", "vb_d") -- delete a word backup
map("n", "<C-a>", "gg<S-v>G") -- select all
map("n", "<C-s>", ":w<CR>", { desc = "Save file" }) -- Save file

map("n", "<leader>qq", ":wqa<CR>", { desc = "Quit" })
map("n", "<leader>qc", ":qa!<CR>", { desc = "Quit not Save" })

-- Move a line up or down in normal mode
map("n", "<A-down>", ":m .+1<CR>==", { desc = "Move line down", noremap = true, silent = true })
map("n", "<A-up>", ":m .-2<CR>==", { desc = "Move line up", noremap = true, silent = true })

-- Move a line or block up or down in visual mode
map("v", "<A-down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", noremap = true, silent = true })
map("v", "<A-up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", noremap = true, silent = true })

-- Resize window
map("n", "=", [[<cmd>vertical resize +5<cr>]])
map("n", "-", [[<cmd>vertical resize -5<cr>]])
map("n", "+", [[<cmd>horizontal resize +2<cr>]])
map("n", "_", [[<cmd>horizontal resize -2<cr>]])

-- split window
map("n", "ss", ":split<CR>", opts) -- up/down
map("n", "sv", ":vsplit<CR>", opts) -- left/right

-- log
map("n", "<leader>scc", ":TodoTelescope<CR>", { desc = "List all TODO" })
map("n", "<leader>scn", function()
	require("todo-comments").jump_next()
end, { desc = "[N]ext TODO" })
map("n", "<leader>scp", function()
	require("todo-comments").jump_prev()
end, { desc = "[P]revious TODO" })
map("n", "<leader>sdd", vim.diagnostic.open_float, { desc = "Open Errors" })
map("n", "<leader>sdn", vim.diagnostic.goto_next, { desc = "[N]ext Error" })
map("n", "<leader>sdp", vim.diagnostic.goto_prev, { desc = "[P]revious Error" })

-- Git
map("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", { desc = "[G]itsigns [H]unk" })
map("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "[G]itsigns toggle [T]ime" })
map("n", "<leader>gg", ":LazyGit<CR>", { desc = "Lazy[G]it" })
map("n", "<leader>gf", ":LazyGitFilterCurrentFile<CR>", { desc = "Current [F]ile" })
map("n", "<leader>gs", ":TermExec cmd='git status'<CR>", { desc = "[S]tatus" })

-- Term
map("n", "<C-\\>", ":ToggleTerm<CR>", opts)
