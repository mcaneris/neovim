local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  Bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use {
    'glepnir/lspsaga.nvim',
    branch = 'main'
  }

  -- Utilities
  use 'folke/which-key.nvim'
  use 'echasnovski/mini.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  }
  use 'mhartington/formatter.nvim'
  use 'github/copilot.vim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim', }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use {
    'mhanberg/elixir.nvim',
    requires = { 'neovim/nvim-lspconfig', 'nvim-lua/plenary.nvim' }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Theme
  use 'projekt0n/github-nvim-theme'
  use 'rebelot/kanagawa.nvim'

  -- Syntax
	use("TovarishFin/vim-solidity")

  if Bootstrap then
    require('packer').sync()
  end
end)
