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
				require("luasnip").lsp_expand(args.body)
			end,
		},
		mapping = {
			["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
			["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
			["<C-e>"] = cmp.mapping({
				i = cmp.mapping.abort(),
				c = cmp.mapping.close(),
			}),
			["<C-y>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Insert,
				select = true,
			}, { "i", "c" }),
			["<c-space>"] = cmp.mapping({
				i = cmp.mapping.complete(),
				c = function(
					_ --[[fallback]]
				)
					if cmp.visible() then
						if not cmp.confirm({ select = true }) then
							return
						end
					else
						cmp.complete()
					end
				end,
			}),
		},
		sources = cmp.config.sources({
			{ name = "nvim_lua" },
			{ name = "nvim_lsp" },
			{ name = "path" },
			{ name = "luasnip" },
			{ name = "calc" },
			{ name = "emoji" },
			{ name = "buffer", keyword_length = 5 },
		}),
		formatting = {
			format = lspkind.cmp_format({
				with_text = true,
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

	require("lspconfig")["yamlls"].setup({
		capabilities = capabilities,
	})
end
