return function()
	local present, cmp = pcall(require, "cmp")
	if not present then
		return
	end

	local lspkind = require("lspkind")
	lspkind.init()

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			end,
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		}),
		sources = cmp.config.sources({
			{ name = "nvim_lua" },
			{ name = "nvim_lsp" },
			{ name = "path" },
			{ name = "luasnip" },
			{ name = "calc" },
			{ name = "emoji" },
			{ name = "buffer", keyword_length = 5 },
		}, {
			{ name = "buffer" },
		}),
		formatting = {
			format = lspkind.cmp_format({
				mode = "symbol_text",
				maxwidth = 50,
				symbol_map = {
					Text = " ",
					Method = " ",
					Function = " ",
					Constructor = " ",
					Field = " ",
					Variable = " ",
					Class = " ",
					Interface = " ",
					Module = " ",
					Property = " ",
					Unit = " ",
					Value = " ",
					Enum = " ",
					Keyword = " ",
					Snippet = " ",
					Color = " ",
					File = " ",
					Reference = " ",
					Folder = " ",
					EnumMember = " ",
					Constant = " ",
					Struct = " ",
					Event = " ",
					Operator = " ",
					TypeParameter = " ",
				},
				menu = {
					buffer = "[BUF]",
					nvim_lsp = "[LSP]",
					nvim_lua = "[API]",
					path = "[PTH]",
					luasnip = "[SNP]",
				},
			}),
		},
		experimental = {
			native_menu = false,
			ghost_text = true,
		},
	})

	-- Set configuration for specific filetype.
	cmp.setup.filetype("gitcommit", {
		sources = cmp.config.sources({
			{ name = "cmp_git" },
			{ name = "luasnip" },
		}, {
			{ name = "buffer" },
		}),
	})

	-- Setup lspconfig.
	local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

	require("lspconfig")["clangd"].setup({
		capabilities = capabilities,
	})

	require("lspconfig")["cssls"].setup({
		capabilities = capabilities,
	})

	require("lspconfig")["html"].setup({
		capabilities = capabilities,
	})

	require("lspconfig")["tsserver"].setup({
		capabilities = capabilities,
	})
end
