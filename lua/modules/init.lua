-- Auto install packer
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

return require("packer").startup({
	function(use)
		use("lewis6991/impatient.nvim")

		-- Packer can manage itself
		use("wbthomason/packer.nvim")

		-- Common dependencies
		use("nvim-lua/plenary.nvim")

		-- Web-devicons
		use({
			"kyazdani42/nvim-web-devicons",
			config = function()
				require("nvim-web-devicons").setup({
					default = true,
				})
			end,
		})

		-- Treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			config = require("modules.config.treesitter"),
			run = ":TSUpdate",
		})

		-- Galaxyline
		use({
			"glepnir/galaxyline.nvim",
			branch = "main",
			config = require("modules.config.galaxyline"),
			requires = { "kyazdani42/nvim-web-devicons" },
		})

		-- Git
		use({
			"lewis6991/gitsigns.nvim",
			config = require("modules.config.gitsigns"),
			requires = {
				{ "nvim-lua/plenary.nvim" },
			},
		})

		use({
			"tpope/vim-fugitive",
			cmd = {
				"Git",
				"GV",
				"G",
			},
		})

		use({ "junegunn/gv.vim", after = { "vim-fugitive" } })

		-- Auto pairs
		use({ "jiangmiao/auto-pairs" })

		-- Undotree
		use({ "mbbill/undotree" })

		use({
			"numToStr/Comment.nvim",
			config = function()
				require("Comment").setup()
			end,
		})

		-- HEX Colors
		use({
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("colorizer").setup()
			end,
		})

		-- Surround parenthesis and other symbols
		use({ "tpope/vim-surround" })

		-- Dashboard
		use({
			"glepnir/dashboard-nvim",
			config = require("modules.config.dashboard"),
		})

		-- LSP
		use({
			"williamboman/nvim-lsp-installer",
			config = require("modules.config.nvim-lsp-installer"),
			requires = { "neovim/nvim-lspconfig" },
		})

		use({
			"tami5/lspsaga.nvim",
			config = require("modules.config.lspDiagnosticsSigns"),
		})

		-- Polyglot for various languages syntax
		use({ "sheerun/vim-polyglot" })

		-- Quickfix trouble
		use({
			"folke/trouble.nvim",
			requires = { "kyazdani42/nvim-web-devicons" },
			config = function()
				require("trouble").setup({})
			end,
		})

		-- Indentation lines
		use({
			"lukas-reineke/indent-blankline.nvim",
			config = require("modules.config.indent-blankline"),
		})

		-- Whichkey
		use({
			"folke/which-key.nvim",
			config = function()
				require("which-key").setup({
					icons = {
						separator = "->",
					},
				})
			end,
		})

		-- Cursor highlight
		use({ "xiyaowong/nvim-cursorword" })

		-- Testing
		use({
			"vim-test/vim-test",
			cmd = {
				"TestFile",
				"TestLast",
				"TestNearest",
				"TestSuite",
				"TestVisit",
			},
		})

		-- File tree
		use({
			"kyazdani42/nvim-tree.lua",
			requires = "kyazdani42/nvim-web-devicons",
			config = require("modules.config.nvim-tree"),
		})

		-- Debugging
		use({ "mfussenegger/nvim-dap", config = require("modules.config.dap") })

		use({
			"rcarriga/nvim-dap-ui",
			config = function()
				require("dapui").setup({})
			end,
			requires = "mfussenegger/nvim-dap",
		})

		-- Terminal
		use({
			"akinsho/toggleterm.nvim",
			config = function()
				require("toggleterm").setup({})
			end,
		})

		-- Python formater
		use({
			"psf/black",
			ft = "python",
		})

		use({
			"akinsho/flutter-tools.nvim",
			config = require("modules.config.flutter-tools"),
			require = {
				{ "nvim-lua/plenary.nvim" },
			},
			ft = "dart",
		})

		-- Cmp
		use("onsails/lspkind-nvim")
		use({ "hrsh7th/nvim-cmp", config = require("modules.config.cmp") })
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-nvim-lua")
		use("hrsh7th/cmp-nvim-lsp")
		use({ "hrsh7th/cmp-calc", ft = "markdown" })
		use({ "hrsh7th/cmp-emoji", ft = "markdown" })
		use({
			"L3MON4D3/LuaSnip",
			config = function()
				require("luasnip/loaders/from_vscode").lazy_load()
				require("luasnip").filetype_extend("dart", { "flutter" })
			end,
		})
		use({ "saadparwaiz1/cmp_luasnip" })

		-- Snippets
		use({ "rafamadriz/friendly-snippets" })

		-- Colorscheme
		use({
			"lastra-dev/onedark.nvim",
			config = require("modules.config.onedark-theme"),
		})

		use({
			"nvim-telescope/telescope.nvim",
			config = require("modules.config.telescope"),
		})

		use("/home/oscargl/cht-sh.nvim")

		-- Automatically set up your configuration after cloning packer.nvim
		if PACKER_BOOTSTRAP then
			require("packer").sync()
		end
	end,

	config = {
		compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua",
	},
})
