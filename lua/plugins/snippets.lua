return {
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    dependencies = 'saadparwaiz1/cmp_luasnip',
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require('luasnip').filetype_extend('dart', { 'flutter' })
    end
  },
  { "rafamadriz/friendly-snippets" }
}
