return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Common dependencies
  use {'nvim-lua/plenary.nvim'}

  -- Post-install/update hook with neovim command
  use {
    'nvim-treesitter/nvim-treesitter',
    config = require 'modules.config.treesitter',
    run = ':TSUpdate'
  }

  -- Galaxyline
  use {
    'glepnir/galaxyline.nvim', branch = 'main',
    config = require 'modules.config.galaxyline',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = require 'modules.config.gitsigns',
    requires = {
      {'nvim-lua/plenary.nvim'}
    }
  }

  use {
    'tpope/vim-fugitive',
    cmd = {
      'Git',
      'GV'
    }
  }
  use {
    'junegunn/gv.vim',
    after = {'vim-fugitive'}
  }

  -- Auto pairs
  use {'jiangmiao/auto-pairs'}

  -- FZF
 	use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
	use {'junegunn/fzf.vim'}

  -- Undotree
  use {'mbbill/undotree'}

  -- Auto commenting
  use {'preservim/nerdcommenter'}

  -- HEX Colors
  use {
    'norcalli/nvim-colorizer.lua',
    config = require('colorizer').setup()
  }

  -- Surround parenthesis and other symbols
  use {'tpope/vim-surround'}

  -- Dashboard
  use {
    'glepnir/dashboard-nvim',
    config = require 'modules.config.dashboard'
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = require 'modules.config.lspInstall',
    requires = {'kabouzeid/nvim-lspinstall'}
  }

  use {
    'glepnir/lspsaga.nvim',
    config = require 'modules.config.lspDiagnosticsSigns'
  }

  -- Polyglot for various languages syntax
  use {'sheerun/vim-polyglot'}

  -- Quickfix trouble
  use {
    'folke/trouble.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = require("trouble").setup{}
  }

  -- Indentation lines
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = require 'modules.config.indent-blankline'
  }

  -- Whichkey
  use {
    "folke/which-key.nvim",
    config = require("which-key").setup{}
  }

  -- Cursor highlight
  use {'xiyaowong/nvim-cursorword'}

  -- Testing
  use {
    'vim-test/vim-test',
    cmd = {
      'TestFile',
      'TestLast',
      'TestNearest',
      'TestSuite',
      'TestVisit'
    }
  }

  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    config = require 'modules.config.nvim-tree',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Debugging
  use {
    'mfussenegger/nvim-dap',
    config = require 'modules.config.dap'
  }
  use {
    'rcarriga/nvim-dap-ui',
    config = require ("dapui").setup{},
    requires = 'mfussenegger/nvim-dap',
  }

  -- Terminal
  use {
    "akinsho/toggleterm.nvim",
    config = require("toggleterm").setup{}
  }

  -- Python formater
  use {
    'psf/black',
    ft = 'python'
  }

  -- Flutter
  use {
    'dart-lang/dart-vim-plugin',
    ft = 'dart'
  }
  use {
    'akinsho/flutter-tools.nvim',
    config = require 'modules.config.flutter-tools',
    require = {
      {'dart-lang/dart-vim-plugin'},
      {'nvim-lua/plenary.nvim'}
    },
    ft = 'dart'
  }

  -- CMP and snippets
  use {
    "hrsh7th/nvim-cmp",
    config = require 'modules.config.cmp',
      --require 'modules.config.completionItemKinds'
    requires = {
      "hrsh7th/vim-vsnip",
      'hrsh7th/vim-vsnip-integ',
      "hrsh7th/cmp-buffer",
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/cmp-calc',
      {
        'hrsh7th/cmp-emoji',
        ft = 'markdown'
      },
      'SirVer/ultisnips',
      'quangnguyen30192/cmp-nvim-ultisnips',
      'onsails/lspkind-nvim'
    }
  }

  use {
    'Nash0x7E2/awesome-flutter-snippets',
    requires = {'hrsh7th/nvim-cmp'},
    ft = 'dart'
  }

  use {
    'mlaursen/vim-react-snippets',
    requires = {'hrsh7th/nvim-cmp'},
    ft = {'javascript', 'typescript'}
  }

  use {
    'honza/vim-snippets',
    requires = {'hrsh7th/nvim-cmp'}
  }

  -- Colorscheme
  use {'dracula/vim', as = 'dracula'}

  -- Personal snippets
  --use {
    --'~/.local/share/nvim/site/pack/packer/custom-snippets',
    --requires = {'hrsh7th/nvim-cmp'}
  --}
end)

