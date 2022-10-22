return function()
	local present, catppuccin = pcall(require, "catppuccin")
	if not present then
		return
	end

	vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

	-- Lua
	catppuccin.setup({
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			telescope = true,
			treesitter = true,
			dashboard = true,
			lsp_saga = true,
			lsp_trouble = true,
			markdown = true,
			-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
			indent_blankline = {
				enabled = true,
				colored_indent_levels = false,
			},
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
				},
			},
		},
	})

	vim.api.nvim_command "colorscheme catppuccin"
end
