return function()
	local present, indent_blankline = pcall(require, "indent_blankline")
	if not present then
		return
	end

	indent_blankline.setup({
		char = "▏",
		filetype_exclude = {
			"help",
			"terminal",
			"dashboard",
			"startify",
			"NvimTree",
			"markdown",
			"text",
			"packer",
			"mason",
			"",
		},
		buftype_exclude = { "terminal" },
		show_trailing_blankline_indent = false,
		show_first_indent_level = false,
	})
end
