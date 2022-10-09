local utils = require("core.utils")
local map = utils.keymap.map

vim.g.mapleader = " "

-- Avoid ex mode
map("n", "Q", "<Nop>")
-- Avoid command history
map("n", "q:", "<Nop>")

-- Move right in insert mode, to close parenthesis
-- map('i', '<C-l>', '<Right>')

-- Panel switching
map("n", "<leader>h", "<cmd>wincmd h<CR>")
map("n", "<leader>j", "<cmd>wincmd j<CR>")
map("n", "<leader>k", "<cmd>wincmd k<CR>")
map("n", "<leader>l", "<cmd>wincmd l<CR>")

-- Split panel
map("n", "<leader>v", "<C-w>v")
map("n", "<leader>s", "<C-w>s")

-- Line moving
-- Normal mode
map("n", "<C-j>", ":m .+1<CR>==")
map("n", "<C-k>", ":m .-2<CR>==")
-- Insert mode
-- map('i', '<C-j>', '<ESC>:m .+1<CR>==gi')
-- map('i', '<C-k>', '<ESC>:m .-2<CR>==gi')
-- Visual mode
map("x", "<C-j>", ":m '>+1<CR>gv=gv")
map("x", "<C-k>", ":m '<-2<CR>gv=gv")

-- Terminal
-- Enter terminal mode
map("n", "<leader>t", "<cmd>ToggleTerm<cr>")
-- Exit insert mode in terminal
map("t", "<C-o>", [[<C-\><C-n>]])

-- File tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")

-- Flutter
-- map("n", "<leader>fe", "<cmd>FlutterEmulators<CR>")
-- map("n", "<leader>fe", "<cmd>!flutter emulators --launch Pixel_2_API_30<CR>")
-- map("n", "<leader>fr", "<cmd>FlutterRun<CR>")
-- map("n", "<leader>fh", "<cmd>FlutterRestart<CR>")
-- map("n", "<leader>fq", "<cmd>FlutterQuit<CR>")
-- map("n", "<leader>fc", "<cmd>below new __FLUTTER_DEV_LOG__<CR>")

-- Format Files
-- map("n", "<leader>fo", "<cmd>lua vim.lsp.buf.formatting()<CR>")

-- Undotree
-- map("n", "<leader>u", "<cmd>UndotreeShow<CR>")

-- Test suite
map("n", "t<C-n>", "<cmd>TestNearest<CR>")
map("n", "t<C-f>", "<cmd>TestFile<CR>")
map("n", "t<C-s>", "<cmd>TestSuite<CR>")
map("n", "t<C-l>", "<cmd>TestLast<CR>")
map("n", "t<C-g>", "<cmd>TestVisit<CR>")

-- Lsp Saga
-- Defined in modules/config/nvim-lsp-installer.lua

-- Git
-- Defined in modules/config/gitsigns.lua

-- Quick fix trouble
map("n", "<leader>xx", "<cmd>TroubleToggle<CR>")
map("n", "<leader>xw", "<cmd>TroubleToggle lsp_workspace_diagnostics<CR>")
map("n", "<leader>xd", "<cmd>TroubleToggle lsp_document_diagnostics<CR>")
map("n", "<leader>xq", "<cmd>TroubleToggle quickfix<CR>")
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>")
map("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>")

-- Breakpoints for undo
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", "!", "!<c-g>u")
map("i", "?", "?<c-g>u")

-- DAP Debugging
map("n", "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
map("n", "<leader>dr", "<cmd>lua require'dap'.continue()<CR>")
map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<CR>")
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>")

-- Alternate file
map("n", "<BS>", "<C-^>")

-- fix current
-- thanks to mincrmatt12
-- https://stackoverflow.com/questions/67988374/neovim-lsp-auto-fix-fix-current
map("n", "<leader>qf", "<cmd>lua require('lsp_fixcurrent')()<CR>")

-- cht.sh
-- map("n", "<leader>cs", "<cmd>lua require'cht-sh'.search()<CR>")
-- map("n", "<leader>cS", "<cmd>lua require'cht-sh'.search_lang()<CR>")
-- map("n", "<leader>ocs", "<cmd>lua require'cht-sh'.open_search()<CR>")

-- Lua Snips (couldn't find a way to map without vim cmd)
vim.cmd([[
  imap <silent><expr> <c-j> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<c-j>'
  inoremap <silent> <c-k> <cmd>lua require('luasnip').jump(-1)<CR>
  snoremap <silent> <c-j> <cmd>lua require('luasnip').jump(1)<CR>
  snoremap <silent> <c-k> <cmd>lua require('luasnip').jump(-1)<CR>
]])
