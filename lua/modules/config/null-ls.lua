return function()
	local present, nullLs = pcall(require, "null-ls")
	if not present then
		return
	end
	nullLs.setup({
		sources = {
			nullLs.builtins.formatting.stylua,
			nullLs.builtins.formatting.black,
		},
	})
end
