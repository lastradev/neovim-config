return {
  {
    'williamboman/mason.nvim',
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = function()
      require("mason").setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = { exclude = { "solargraph", "ruby_ls" } }
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require("lspconfig")

      vim.fn.sign_define(
        "DiagnosticSignError",
        { text = "", texthl = "DiagnosticSignError", numhl = "DiagnosticSignError" }
      )
      vim.fn.sign_define(
        "DiagnosticSignWarn",
        { text = "", texthl = "DiagnosticSignWarn", numhl = "DiagnosticSignWarn" }
      )
      vim.fn.sign_define(
        "DiagnosticSignHint",
        { text = "", texthl = "DiagnosticSignHint", numhl = "DiagnosticSignHint" }
      )
      vim.fn.sign_define(
        "DiagnosticSignInfo",
        { text = "", texthl = "DiagnosticSignInfo", numhl = "DiagnosticSignInfo" }
      )
      vim.diagnostic.config({ virtual_text = false })

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

        nmap('<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
          '[W]orkspace [L]ist Folders')
        -- nmap("<leader>fo", function() vim.lsp.buf.format { async = true } end, '[Fo]rmat Document')
      end

      local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

      lspconfig.lua_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            diagnostics = {
              globals = { "vim", },
            },
            telemetry = { enable = false, },
          },
        },
      })

      -- Installed through rbenv
      lspconfig.solargraph.setup({
        cmd = { "bundle", "exec", "solargraph", "stdio" },
        on_attach = on_attach,
        capabilities = capabilities,
        init_options = {
          formatting = false
        },
        settings = {
          solargraph = {
            diagnostics = false,
            formatting = false,
          }
        }
      })

      local on_ruby_attach = function(client, buffer)
        -- in the case you have an existing `on_attach` function
        -- with mappings you share with other lsp clients configs
        pcall(on_attach, client, buffer)

        local diagnostic_handler = function()
          local params = vim.lsp.util.make_text_document_params(buffer)

          client.request(
            'textDocument/diagnostic',
            { textDocument = params },
            function(err, result)
              if err then
                local err_msg = string.format("ruby-lsp - diagnostics error - %s", vim.inspect(err))
                vim.lsp.log.error(err_msg)
              end
              if not result then return end

              vim.lsp.diagnostic.on_publish_diagnostics(
                nil,
                vim.tbl_extend('keep', params, { diagnostics = result.items }),
                { client_id = client.id }
              )
            end
          )
        end

        diagnostic_handler() -- to request diagnostics when attaching the client to the buffer

        local ruby_group = vim.api.nvim_create_augroup('ruby_ls', { clear = false })
        vim.api.nvim_create_autocmd(
          { 'BufEnter', 'BufWritePre', 'InsertLeave', 'TextChanged' },
          {
            buffer = buffer,
            callback = diagnostic_handler,
            group = ruby_group,
          }
        )
      end

      lspconfig.ruby_ls.setup({
        cmd = { "bundle", "exec", "ruby-lsp" },
        on_attach = on_ruby_attach,
        capabilities = capabilities,
        init_options = {
          experimentalFeaturesEnabled = true,
          enabled_features = {
            "documentSymbol",
            "documentLink",
            "hover",
            "foldingRanges",
            "selectionRanges",
            "semanticHighlighting",
            "formatting",
            "onTypeFormatting",
            "diagnostics",
            "codeActions",
            "codeActionResolve",
            "documentHighlight",
            "inlayHint",
            "pathCompletion",
            "codeLens",
          }
        }
      })

      local servers = {
        "tsserver",
        "clangd",
        "cssls",
        "html",
        "pyright",
        "bashls",
        "dockerls",
        "yamlls"
      }

      for _, lsp in ipairs(servers) do
        require('lspconfig')[lsp].setup {
          on_attach = on_attach,
          capabilities = capabilities,
        }
      end
    end
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      local null_ls = require("null-ls")
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
  }
}
