return function()
	vim.g.onedark_style = "deep"
	vim.g.onedark_transparent_background = true -- By default it is false
	vim.g.onedark_darker_diagnostics = false -- By default it is true

	require("onedark").setup()
end
