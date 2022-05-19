return function()
	local present, nullLs = pcall(require, "null-ls")
	if not present then
		return
	end
	nullLs.setup({
		sources = {
			nullLs.builtins.formatting.stylua,
			nullLs.builtins.formatting.black,
			nullLs.builtins.formatting.prettier,

			nullLs.builtins.code_actions.gitsigns,
			nullLs.builtins.code_actions.refactoring,

			nullLs.builtins.diagnostics.flake8,
			nullLs.builtins.diagnostics.codespell,
			nullLs.builtins.diagnostics.proselint,
			nullLs.builtins.completion.spell,
		},
	})
end
