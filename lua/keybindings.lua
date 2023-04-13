vim.g.mapleader = ","

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- easier window nav
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- easy resizing (and disable normal arrow keys)
map("n", "<Up>", ":resize -5<CR>", opts)
map("n", "<Down>", ":resize +5<CR>", opts)
map("n", "<Left>", ":vertical resize -5<CR>", opts)
map("n", "<Right>", ":vertical resize +5<CR>", opts)

-- line navigation
map("n", "j", "gj", opts)
map("n", "k", "gk", opts)

-- exit insert
map("i", "jk", "<C-[>", opts)

-- search highlight clear
map("n", "<leader><space>", ":nohlsearch<CR>", opts)

-- indent in visual mode, stay in visual mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

vim.cmd [[
  autocmd BufWritePre * %s/\s\+$//e
]]
