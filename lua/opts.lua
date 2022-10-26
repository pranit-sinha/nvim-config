--[[ opts.lua ]]
local opt = vim.opt

-- [[ Context ]]
opt.colorcolumn = '80'
opt.number = true
opt.scrolloff = 4
opt.signcolumn = "yes"
opt.mouse = "a" 
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.cursorline = true
opt.formatoptions = 'tqj'
opt.termguicolors = true

-- [[ Filetypes ]]
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- [[ Theme ]]
opt.syntax = "ON"
opt.termguicolors = true

-- [[ Search ]]
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- [[ Whitespace ]]
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4
opt.autoindent = true
opt.smartindent = true

-- [[ Splits ]]
opt.splitright = true
opt.splitbelow = true

-- [[ Autocommands ]]

local format = vim.api.nvim_create_augroup("Format", { clear = true})
local template = vim.api.nvim_create_augroup("Template", {clear = true})

vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = {"*"},
    command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
    group = format,
})

vim.api.nvim_create_autocmd({"BufNewFile"}, {
    pattern = {"*.c"},
    command = "0r ~/.config/nvim/CodeTemplates/template.c",
    group = template,
})



