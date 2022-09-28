return function()
	local present, onedark = pcall(require, "onedark")
	if not present then
		return
	end

	-- Lua
	onedark.setup({
		-- Main options --
		style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
		transparent = true, -- Show/hide background
		term_colors = true, -- Change terminal color as per the selected theme style
		ending_tildes = false, -- show the end-of-buffer tildes. By default they are hidden
		-- toggle theme style ---
		toggle_style_key = "<leader>ct", -- Default keybinding to toggle
		toggle_style_list = { "deep", "light" }, --list of styles to toggle amoung
		-- Change code style ---
		-- Options are italic, bold, underline, none
		-- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
		code_style = {
			comments = "italic",
			keywords = "none",
			functions = "none",
			strings = "none",
			variables = "none",
		},
		-- Custom Highlights --
		colors = {
			bg1 = "#282A36",
		}, -- Override default colors
		highlights = {
			NvimTreeNormal = { bg = "#282A36" },
			DashboardShortCut = { fg = "$yellow" },
			DashboardHeader = { fg = "$green" },
			DashboardCenter = { fg = "$blue" },
			DashboardFooter = { fg = "$cyan", italic = true },
			TSOperator = { fg = "$purple" }
		}, -- Override highlight groups
		-- Plugins Config --
		diagnostics = {
			darker = false, -- darker colors for diagnostic
			undercurl = false, -- use undercurl for diagnostics
			background = true, -- use background color for virtual text
		},
	})

	onedark.load()
end
