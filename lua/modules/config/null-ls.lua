return function()
	local present, null_ls = pcall(require, "null-ls")
	if not present then
		return
	end

	null_ls.setup({
		sources = {
			null_ls.builtins.diagnostics.reek.with({
				command = {
					'bundle', 'exec', 'reek'
				}
			}),
			null_ls.builtins.formatting.erb_lint.with({
				command = {
					'bundle', 'exec', 'erblint'
				},
			}),
		},
	})
end
