return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'onsails/lspkind-nvim',
    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lua',
    { 'hrsh7th/cmp-calc',  ft = 'markdown' },
    { 'hrsh7th/cmp-emoji', ft = 'markdown' },
    {
      'petertriho/cmp-git',
      dependencies = 'nvim-lua/plenary.nvim',
      config = function()
        require('cmp_git').setup()
      end,
    }
  },
  config = function()
    local lspkind = require("lspkind")
    local cmp = require("cmp")
    lspkind.init()

    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
        end,
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
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "path" },
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
            nvim_lsp = "[LSP]",
            nvim_lua = "[API]",
            path = "[PTH]",
            luasnip = "[SNP]",
            buffer = "[BUF]",
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
        { name = "git" },
        { name = "luasnip" },
      }, {
        { name = "buffer" },
      }),
    })
  end
}
