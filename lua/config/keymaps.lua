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
vim.keymap.set("n", "<A-down>", ":m .+1<CR>==", { desc = "Move line down", noremap = true, silent = true })
vim.keymap.set("n", "<A-up>", ":m .-2<CR>==", { desc = "Move line up", noremap = true, silent = true })

-- Move a line or block up or down in visual mode
vim.keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", noremap = true, silent = true })
vim.keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", noremap = true, silent = true })

-- Resize window
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]])
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]])

-- split window
map("n", "ss", ":split<CR>", opts) -- up/down
map("n", "sv", ":vsplit<CR>", opts) -- left/right

-- log
-- vim.keymap.set('n', '<leader>ee', vim.diagnostic.open_float, { desc = 'Open Errors' })
-- vim.keymap.set('n', '<leader>en', vim.diagnostic.goto_next, { desc = 'Next Error' })
-- vim.keymap.set('n', '<leader>ep', vim.diagnostic.goto_prev, { desc = 'Previous Error' })
