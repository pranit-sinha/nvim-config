-- [[ plugs.lua ]]

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

require('packer').init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Colorscheme

    use{
        'rose-pine/neovim',
        as = 'rose-pine',
        tag = 'v1.*',
    }
    
    use 'neovim/nvim-lspconfig'

    -- cmp
    -- use "hrsh7th/nvim-cmp" -- The completion plugin
    -- use "hrsh7th/cmp-buffer" -- buffer completions
    -- use "hrsh7th/cmp-path" -- path completions
    -- use "hrsh7th/cmp-cmdline" -- cmdline completions

    -- snippets
    -- use "L3MON4D3/LuaSnip" --snippet engine
    -- use "saadparwaiz1/cmp_luasnip" -- snippet completions
    -- use "rafamadriz/friendly-snippets" -- snippet library

end)
