local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ubezpeci sa ze je packer nainstalovany
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

local packer = require'packer'
local util = require'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})


packer.startup(function()
  local use = use
  -- Samotny Packer -> package manager
  use {'wbthomason/packer.nvim', opt = true}

  -- File Explorer
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
    }

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'BurntSushi/ripgrep'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use 'folke/lsp-colors.nvim'
  use { 'folke/trouble.nvim', requires = "kyazdani42/nvim-web-devicons" }

  -- Formatting
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'kdheepak/cmp-latex-symbols'
  use 'hrsh7th/cmp-path'
  use 'windwp/nvim-autopairs'
  use "blackCauldron7/surround.nvim"
  use 'windwp/nvim-ts-autotag'

  -- themes
  use 'olimorris/onedarkpro.nvim'

  -- ToggleTerm
  use {"akinsho/toggleterm.nvim"}

  -- Lualine
  use 'hoob3rt/lualine.nvim'

  -- Bufferline
  use 'akinsho/bufferline.nvim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- Comment
  use 'terrortylor/nvim-comment'
   
  end
)
