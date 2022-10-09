return function()
	local lsp_installer = require("nvim-lsp-installer")
	local lspconfig = require("lspconfig")
	if not lsp_installer or not lspconfig then
		return
	end

	local on_attach = function(_, bufnr)
		local nmap = function(keys, func, desc)
			if desc then
				desc = 'LSP: ' .. desc
			end

			vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
		end

		local xmap = function(keys, func, desc)
			if desc then
				desc = 'LSP: ' .. desc
			end

			vim.keymap.set('x', keys, func, { buffer = bufnr, desc = desc })
		end

		nmap('<leader>rn', "<cmd>Lspsaga rename<cr>", '[R]e[n]ame')
		nmap('<leader>a', "<cmd>Lspsaga code_action<cr>", 'Code [A]ction')
		xmap('<leader>a', ":<c-u>Lspsaga range_code_action<cr>", 'Code [A]ction')
		nmap('<leader>fi', "<cmd>Lspsaga lsp_finder<cr>", '[Fi]nder')
		nmap('<leader>cd', "<cmd>Lspsaga show_line_diagnostics<cr>", '[C]ode [D]iagnostics')
		nmap('<C-b>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", 'Scroll down')
		nmap('<C-f>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", 'Scroll up')

		nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
		nmap('gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
		nmap('gr', require('telescope.builtin').lsp_references)
		nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
		nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

		-- See `:help K` for why this keymap
		nmap('K', "<cmd>Lspsaga hover_doc<cr>", 'Hover Documentation')
		nmap('gs', "<cmd>Lspsaga signature_help<cr>", 'Signature Documentation')

		-- Lesser used LSP functionality
		nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
		nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
		nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
		nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')

		nmap('<leader>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, '[W]orkspace [L]ist Folders')

		nmap("<leader>fo", function()
			vim.lsp.buf.format { async = true }
		end, '[Fo]rmat Document')

		-- Create a command `:Format` local to the LSP buffer
		vim.api.nvim_buf_create_user_command(bufnr, 'Format', vim.lsp.buf.format or vim.lsp.buf.formatting,
			{ desc = 'Format current buffer with LSP' })
	end

	local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

	lsp_installer.setup({
		automatic_installation = false, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
	})

	-- local runtime_path = vim.split(package.path, ';')
	-- table.insert(runtime_path, 'lua/?.lua')
	-- table.insert(runtime_path, 'lua/?/init.lua')

	lspconfig.sumneko_lua.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			Lua = {
				runtime = {
					version = 'LuaJIT',
					-- 	path = runtime_path,
				},
				diagnostics = {
					globals = { "vim", },
				},
				-- workspace = { library = vim.api.nvim_get_runtime_file('', true) },
				-- Do not send telemetry data containing a randomized but unique identifier
				telemetry = { enable = false, },
			},
		},
	})

	-- Installed through rbenv
	lspconfig.solargraph.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			solargraph = {
				diagnostics = true
			}
		}
	})

	local servers = { "tsserver", "clangd", "cssls", "html", "pyright", "bashls", "dockerls", "yamlls", "intelephense" }
	for _, lsp in ipairs(servers) do
		require('lspconfig')[lsp].setup {
			on_attach = on_attach,
			capabilities = capabilities,
		}
	end
end
