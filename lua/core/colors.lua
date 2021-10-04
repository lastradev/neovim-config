vim.g.onedark_style = 'deep'
vim.g.onedark_transparent_background = true -- By default it is false
vim.g.onedark_darker_diagnostics = false -- By default it is true
local colorscheme = 'onedark'

-- Highlight current word
vim.cmd[[au VimEnter * highlight CursorWord guibg=#363636]]

pcall(function()
  vim.cmd('colorscheme ' .. colorscheme)
end)
