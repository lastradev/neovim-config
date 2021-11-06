return function()
  local present, cmp = pcall(require, "cmp")
  if not present then
      return
  end

  local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
  end

  local lspkind = require('lspkind')

  cmp.setup({
    snippet = {
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body)
        vim.fn["UltiSnips#Anon"](args.body)
      end,
    },
    mapping = {
      ['<CR>'] = cmp.mapping.confirm {
        select = false,
        behavior = cmp.ConfirmBehavior.Insert,
      },
      ['<Tab>'] = function(fallback)
        if not cmp.select_next_item() then
          if vim.bo.buftype ~= 'prompt' and has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end
      end,
      ['<S-Tab>'] = function(fallback)
        if not cmp.select_prev_item() then
          if vim.bo.buftype ~= 'prompt' and has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end
      end,
      ['<C-Space>'] = cmp.mapping.complete(),
    },
    sources = {
      { name = "nvim_lsp" },
      { name = "path" },
      { name = "vsnip" },
      { name = "ultisnips" },
      { name = "calc" },
      { name = "buffer" },
      { name = "emoji" },
    },
    formatting = {
        format = lspkind.cmp_format(),
      }
  })

  -- Setup lspconfig.
  --require('lspconfig')['cpp'].setup {
    --capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  --}

  --require('lspconfig')['css'].setup {
    --capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  --}

  --require('lspconfig')['html'].setup {
    --capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  --}
end
