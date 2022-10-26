--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins
require('colorscheme')
--require('cmp')

-- PLUGINS
require('nvim-tree').setup{}
require('nvim-web-devicons').setup{}
require('lualine').setup{}
--require('hrsh7th/nvim-cmp').setup{}
--require('hrsh7th/cmp-buffer')setup{}
--require('hrsh7th/cmp-path')setup{}
--require('hrsh7th/cmp-cmdline')setup{}
--require('saadparwaiz1/cmp_luasnip')setup{}
--require('L3MON4D3/LuaSnip')setup{}
--require('rafamadriz/friendly-snippets')setup{}
require('rose-pine').setup{
    dark_variant = 'moon',
    bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = true,
	disable_italics = false,

    groups = {
		background = 'base',
		panel = 'surface',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = 'rose' }
	}
}
