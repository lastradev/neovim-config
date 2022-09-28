return function()
	local present, nullLs = pcall(require, "null-ls")
	if not present then
		return
	end
	nullLs.setup({
		sources = {
			nullLs.builtins.formatting.black,
			nullLs.builtins.diagnostics.flake8,
		},
	})
end
