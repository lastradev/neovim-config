return function()
	local lsp_installer = require("nvim-lsp-installer")
	local lspconfig = require("lspconfig")
	if not lsp_installer or not lspconfig then
		return
	end

	lsp_installer.setup({
		automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
	})
	lspconfig.sumneko_lua.setup({
		settings = {
			Lua = {
				diagnostics = {
					globals = {
						"vim",
					},
				},
			},
		},
	})
	local servers = { "tsserver", "clangd", "cssls", "html", "pyright" }
	for _, server in pairs(servers) do
		lspconfig[server].setup({})
	end
end
