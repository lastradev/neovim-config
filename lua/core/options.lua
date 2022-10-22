local o = vim.opt

-- Appearance
o.colorcolumn = "80"
o.cursorline = true
o.relativenumber = true
o.showmode = false
o.signcolumn = "yes"
o.termguicolors = true
o.wrap = false
o.ruler = false
o.guicursor = ""
o.mouse = ""

-- Backups
o.backup = false
o.swapfile = false

-- Completion
o.completeopt = "menu,menuone,noselect"
o.pumheight = 8

-- General
o.clipboard = "unnamedplus"
o.hidden = true
o.scrolloff = 8
o.sidescrolloff = 8
o.updatetime = 100
o.incsearch = true
o.errorbells = false
o.hlsearch = false
o.nu = true
o.undofile = true

-- Tabs
o.expandtab = true
o.softtabstop = 2
o.tabstop = 2
o.smartindent = true
o.autoindent = true

-- Shortmess
o.shortmess = o.shortmess + {
	c = true,
}

-- Testing
vim.g["test#strategy"] = "neovim"
vim.g["test#neovim#term_position"] = "below 13"

-- Auto Dart Format
vim.g.dart_format_on_save = 1

-- Python venv
local python_path = "~/.local/venv/nvim"
if vim.fn.empty(vim.fn.glob(python_path)) == 0 then
	vim.g.python3_host_prog = python_path .. "/bin/python"
end

-- Disable bloated programs in nvim
local disabled_built_ins = {
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"gzip",
	"zip",
	"zipPlugin",
	"tar",
	"tarPlugin",
	"getscript",
	"getscriptPlugin",
	"vimball",
	"vimballPlugin",
	"2html_plugin",
	"logipat",
	"rrhelper",
	"spellfile_plugin",
	"matchit",
}

for _, plugin in pairs(disabled_built_ins) do
	vim.g["loaded_" .. plugin] = 1
end
