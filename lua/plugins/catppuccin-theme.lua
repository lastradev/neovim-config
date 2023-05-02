return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require("catppuccin").setup {
      -- flavour = "mocha",
      flavour = "latte",
      background = {
        light = 'latte',
        dark = 'mocha'
      },
      transparent_background = false,
      integrations = {
        harpoon = true,
        mason = true,
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        lsp_saga = true,
        lsp_trouble = true,
        markdown = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
      },
    }

    -- setup must be called before loading
    vim.cmd.colorscheme "catppuccin"
  end
}

