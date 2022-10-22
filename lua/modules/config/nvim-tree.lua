return function()
	local present, nvim_tree = pcall(require, "nvim-tree")
	if not present then
		return
	end

	nvim_tree.setup({
		actions = {
			open_file = {
				window_picker = { enable = false },
				quit_on_open = true,
			},
		},
	})
end
