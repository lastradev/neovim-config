-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons', },
    tag = 'nightly',
    config = require('modules.config.nvim-tree')
  }

  -- Git commands in nvim
  use({ 'tpope/vim-fugitive' })

  -- GitHub
  use({ 'https://github.com/tpope/vim-rhubarb.git' })

  -- Add git related info in the signs columns and popups
  use { 'lewis6991/gitsigns.nvim',
    config = require('modules.config.gitsigns'),
    requires = 'nvim-lua/plenary.nvim'
  }

  -- 'gc' to comment visual regions/lines
  use({ 'numToStr/Comment.nvim', config = function() require('Comment').setup() end, })

  -- Highlight, edit, and navigate code
  use {
    'nvim-treesitter/nvim-treesitter',
    config = require('modules.config.treesitter'),
    run = ':TSUpdate'
  }

  -- LSP
  use { 'williamboman/mason.nvim', config = function() require('mason').setup() end, run = ":MasonUpdate" }
  use { 'williamboman/mason-lspconfig.nvim', config = require('modules.config.mason-lspconfig') }
  use { 'neovim/nvim-lspconfig', config = require('modules.config.lspconfig') }
  use({ 'jose-elias-alvarez/null-ls.nvim', config = require('modules.config.null-ls') })

  -- Autocompletion
  use { 'hrsh7th/nvim-cmp',
    requires = {
      'onsails/lspkind-nvim',
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lua',
      { 'hrsh7th/cmp-calc',  ft = 'markdown' },
      { 'hrsh7th/cmp-emoji', ft = 'markdown' },
      {
        'petertriho/cmp-git',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
          require('cmp_git').setup()
        end,
      }
    },
    config = require('modules.config.cmp')
  }

  -- Snippet Engine and Snippet Expansion
  use({
    'L3MON4D3/LuaSnip',
    requires = 'saadparwaiz1/cmp_luasnip',
    config = function()
      require('luasnip/loaders/from_vscode').lazy_load()
      require('luasnip').filetype_extend('dart', { 'flutter' })
    end,
  })

  -- Snippets
  use({ "rafamadriz/friendly-snippets" })

  --Colorscheme
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = require('modules.config.catppuccin-theme')
  }

  -- Fancier statusline
  use({
    'nvim-lualine/lualine.nvim',
    config = function() require('lualine').setup({ options = { theme = 'catppuccin' } }) end,
    requires = { 'kyazdani42/nvim-web-devicons' },
  })

  -- Add indentation guides even on blank lines
  use({ 'lukas-reineke/indent-blankline.nvim', config = require('modules.config.indent-blankline'), })

  -- Detect tabstop and shiftwidth automatically
  use 'tpope/vim-sleuth'

  -- Fuzzy Finder (files, lsp, etc)
  use { 'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {
      'nvim-lua/plenary.nvim',
    }
  }

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

  -- Auto pairs
  use 'jiangmiao/auto-pairs'

  -- HEX Colors
  use({ 'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup() end, })

  -- Play with surronding symbols in words, sentences, etc.
  use 'tpope/vim-surround'

  -- Fancy lsp options
  use 'tami5/lspsaga.nvim'

  -- Quickfix trouble
  use({
    "folke/trouble.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
    config = function()
      require("trouble").setup()
    end,
  })

  -- Rails
  use { 'tpope/vim-rails' }

  -- Asynchronous Rails Commands
  use { 'tpope/vim-dispatch' }

  -- Database in nvim
  use { 'tpope/vim-dadbod' }

  -- Pluralize
  use { 'tpope/vim-abolish' }

  -- Goodies for ruby gems
  use { 'tpope/vim-bundler' }

  -- Autoclose html tags
  use({ "windwp/nvim-ts-autotag" })

  -- Faster loading
  use 'lewis6991/impatient.nvim'

  -- Harpoon
  use 'ThePrimeagen/harpoon'

  -- Refactoring by martin fowler accessible by prime
  use {
      "ThePrimeagen/refactoring.nvim",
      requires = {
          {"nvim-lua/plenary.nvim"},
          {"nvim-treesitter/nvim-treesitter"}
      },
      config = function()
        require("refactoring").setup()
      end
  }

  if is_bootstrap then
    require('packer').sync()
  end
end)

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
-- load refactoring Telescope extension
pcall(require('telescope').load_extension('refactoring'))

-- vim: ts=2 sts=2 sw=2 et
