local vim_keymap = vim.keymap
vim.g.mapleader = " "

-- Avoid ex mode
vim_keymap.set("n", "Q", "<Nop>")
-- Avoid command history
vim_keymap.set("n", "q:", "<Nop>")

-- Panel switching
vim_keymap.set("n", "<leader>h", "<cmd>wincmd h<CR>")
vim_keymap.set("n", "<leader>j", "<cmd>wincmd j<CR>")
vim_keymap.set("n", "<leader>k", "<cmd>wincmd k<CR>")
vim_keymap.set("n", "<leader>l", "<cmd>wincmd l<CR>")

-- Split panel
vim_keymap.set("n", "<leader>v", "<C-w>v")
vim_keymap.set("n", "<leader>s", "<C-w>s")

-- Line moving
-- Normal mode
vim_keymap.set("n", "<C-j>", ":m .+1<CR>==")
vim_keymap.set("n", "<C-k>", ":m .-2<CR>==")
-- Insert mode
-- vim_keymap.set('i', '<C-j>', '<ESC>:m .+1<CR>==gi')
-- vim_keymap.set('i', '<C-k>', '<ESC>:m .-2<CR>==gi')
-- Visual mode
vim_keymap.set("x", "<C-j>", ":m '>+1<CR>gv=gv")
vim_keymap.set("x", "<C-k>", ":m '<-2<CR>gv=gv")

-- Terminal
-- Exit insert mode in terminal
vim_keymap.set("t", "<C-o>", [[<C-\><C-n>]])

-- File tree
vim_keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- Telescope
vim_keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim_keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")

-- Flutter
-- vim_keymap.set("n", "<leader>fe", "<cmd>FlutterEmulators<CR>")
-- vim_keymap.set("n", "<leader>fe", "<cmd>!flutter emulators --launch Pixel_2_API_30<CR>")
-- vim_keymap.set("n", "<leader>fr", "<cmd>FlutterRun<CR>")
-- vim_keymap.set("n", "<leader>fh", "<cmd>FlutterRestart<CR>")
-- vim_keymap.set("n", "<leader>fq", "<cmd>FlutterQuit<CR>")
-- vim_keymap.set("n", "<leader>fc", "<cmd>below new __FLUTTER_DEV_LOG__<CR>")

-- Format Files
vim_keymap.set("n", "<leader>fo", function() vim.lsp.buf.format { async = true } end)

-- Undotree
-- vim_keymap.set("n", "<leader>u", "<cmd>UndotreeShow<CR>")

-- Test suite
vim_keymap.set("n", "t<C-n>", "<cmd>TestNearest<CR>")
vim_keymap.set("n", "t<C-f>", "<cmd>TestFile<CR>")
vim_keymap.set("n", "t<C-s>", "<cmd>TestSuite<CR>")
vim_keymap.set("n", "t<C-l>", "<cmd>TestLast<CR>")
vim_keymap.set("n", "t<C-g>", "<cmd>TestVisit<CR>")

-- Lsp Saga
-- Defined in modules/config/nvim-lsp-installer.lua

-- Git
-- Defined in modules/config/gitsigns.lua

-- Quick fix trouble
vim_keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<CR>")
vim_keymap.set("n", "<leader>xw", "<cmd>TroubleToggle lsp_workspace_diagnostics<CR>")
vim_keymap.set("n", "<leader>xd", "<cmd>TroubleToggle lsp_document_diagnostics<CR>")
vim_keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<CR>")
vim_keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>")
vim_keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<CR>")

-- Breakpoints for undo
vim_keymap.set("i", ",", ",<c-g>u")
vim_keymap.set("i", ".", ".<c-g>u")
vim_keymap.set("i", "!", "!<c-g>u")
vim_keymap.set("i", "?", "?<c-g>u")

-- DAP Debugging
-- vim_keymap.set("n", "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
-- vim_keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.continue()<CR>")
-- vim_keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_over()<CR>")
-- vim_keymap.set("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>")

-- Alternate file
vim_keymap.set("n", "<BS>", "<C-^>")

-- Lua Snips (couldn't find a way to vim_keymap.set without vim cmd)
vim.cmd([[
  imap <silent><expr> <c-j> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<c-j>'
  inoremap <silent> <c-k> <cmd>lua require('luasnip').jump(-1)<CR>
  snoremap <silent> <c-j> <cmd>lua require('luasnip').jump(1)<CR>
  snoremap <silent> <c-k> <cmd>lua require('luasnip').jump(-1)<CR>
]])

-- Navigate and center
vim_keymap.set("n", "<C-d>", "<C-d>zz")
vim_keymap.set("n", "<C-u>", "<C-u>zz")

local function quickfix()
    vim.lsp.buf.code_action({
        filter = function(a) return a.isPreferred end,
        apply = true
    })
end

vim.keymap.set('n', '<leader>qf', quickfix)

-- remap to open the Telescope refactoring
vim.keymap.set('n', '<leader>rr', function() require('telescope').extensions.refactoring.refactors() end)
vim.keymap.set('v', '<leader>rr', function() require('telescope').extensions.refactoring.refactors() end)
