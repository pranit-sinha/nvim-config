--[[keys.lua]]
local opts = { noremap = true, silent = true }

local map = vim.api.nvim_set_keymap

-- Normal --
map("n", "0", "$", opts)
map("n", "1", "0", opts)

-- Nvim-tree
map("n", "<leader>n", ":NvimTreeToggle<cr>", opts)
map("n", "<leader>o", "o<Esc>", opts)
map("n", "<leader>O", "O<Esc>", opts)

-- Window Navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Insert -- 
map('i', 'jk','<Esc>', opts)
map('i', 'kj', '<Esc>', opts)

-- Visual --
map('v', 'p', 'pgvy', opts)
