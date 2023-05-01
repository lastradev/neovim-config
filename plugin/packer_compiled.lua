-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/oscar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/oscar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/oscar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/oscar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/oscar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\ní\1\0\0\4\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\5\0005\3\6\0B\0\3\1K\0\1\0\1\2\0\0\fflutter\tdart\20filetype_extend\fluasnip\14lazy_load luasnip/loaders/from_vscode\frequire\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  catppuccin = {
    config = { "\27LJ\2\n´\5\0\0\t\0!\0,6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0005\6\b\0=\6\t\0055\6\n\0005\a\f\0005\b\v\0=\b\r\a5\b\14\0=\b\15\a5\b\16\0=\b\17\a5\b\18\0=\b\19\a=\a\20\0065\a\22\0005\b\21\0=\b\r\a5\b\23\0=\b\15\a5\b\24\0=\b\17\a5\b\25\0=\b\19\a=\a\26\6=\6\27\5=\5\28\4B\2\2\0016\2\29\0009\2\30\0029\2\31\2'\4 \0B\2\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\bvim\17integrations\15native_lsp\15underlines\1\2\0\0\14underline\1\2\0\0\14underline\1\2\0\0\14underline\1\0\0\1\2\0\0\14underline\17virtual_text\16information\1\2\0\0\vitalic\rwarnings\1\2\0\0\vitalic\nhints\1\2\0\0\vitalic\verrors\1\0\0\1\2\0\0\vitalic\1\0\1\fenabled\2\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\1\0\t\rnvimtree\2\rlsp_saga\2\14dashboard\2\16lsp_trouble\2\14telescope\2\rmarkdown\2\bcmp\2\rgitsigns\2\15treesitter\2\15background\1\0\2\tdark\nmocha\nlight\nlatte\1\0\2\27transparent_background\2\fflavour\nlatte\nsetup\15catppuccin\frequire\npcall\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    after_files = { "/Users/oscar/.local/share/nvim/site/pack/packer/opt/cmp-calc/after/plugin/cmp_calc.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/opt/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    after_files = { "/Users/oscar/.local/share/nvim/site/pack/packer/opt/cmp-emoji/after/plugin/cmp_emoji.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/opt/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-git"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fcmp_git\frequire\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/cmp-git",
    url = "https://github.com/petertriho/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nÒ\5\0\0\a\0\v\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\t\0005\5\5\0005\6\4\0=\6\6\0055\6\a\0=\6\b\5=\5\n\4B\2\2\1K\0\1\0\fkeymaps\1\0\0\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\0\b\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>gb0<cmd>lua require\"gitsigns\".blame_line()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\nsetup\rgitsigns\frequire\npcall\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n•\2\0\0\6\0\t\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\4B\2\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\v\0\0\thelp\rterminal\14dashboard\rstartify\rNvimTree\rmarkdown\ttext\vpacker\nmason\5\1\0\3#show_trailing_blankline_indent\1\28show_first_indent_level\1\tchar\b‚ñè\nsetup\21indent_blankline\frequire\npcall\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n`\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\15catppuccin\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n£\1\0\0\a\0\t\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4B\2\2\1K\0\1\0\27automatic_installation\1\0\0\fexclude\1\0\0\1\3\0\0\15solargraph\fruby_ls\nsetup\20mason-lspconfig\frequire\npcall\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nû\2\0\0\n\0\17\1\0316\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\15\0004\5\3\0009\6\4\0019\6\5\0069\6\6\0069\6\a\0065\b\t\0005\t\b\0=\t\n\bB\6\2\2>\6\1\0059\6\4\0019\6\v\0069\6\f\0069\6\a\0065\b\14\0005\t\r\0=\t\n\bB\6\2\0?\6\0\0=\5\16\4B\2\2\1K\0\1\0\fsources\1\0\0\1\0\0\1\4\0\0\vbundle\texec\ferblint\rerb_lint\15formatting\fcommand\1\0\0\1\4\0\0\vbundle\texec\treek\twith\treek\16diagnostics\rbuiltins\nsetup\fnull-ls\frequire\npcall\5ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireö\n\1\0\f\0004\0e6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0]Ä6\2\1\0'\4\3\0B\2\2\0029\3\4\2B\3\1\0019\3\5\0015\5\t\0005\6\a\0003\a\6\0=\a\b\6=\6\n\0059\6\v\0019\6\f\0069\6\r\0065\b\15\0009\t\v\0019\t\14\t)\v¸ˇB\t\2\2=\t\16\b9\t\v\0019\t\14\t)\v\4\0B\t\2\2=\t\17\b9\t\v\0019\t\18\tB\t\1\2=\t\19\b9\t\v\0019\t\20\tB\t\1\2=\t\21\b9\t\v\0019\t\22\t5\v\23\0B\t\2\2=\t\24\bB\6\2\2=\6\v\0059\6\25\0019\6\26\0064\b\b\0005\t\27\0>\t\1\b5\t\28\0>\t\2\b5\t\29\0>\t\3\b5\t\30\0>\t\4\b5\t\31\0>\t\5\b5\t \0>\t\6\b5\t!\0>\t\a\b4\t\3\0005\n\"\0>\n\1\tB\6\3\2=\6\26\0055\6)\0009\a#\0025\t$\0005\n%\0=\n&\t5\n'\0=\n(\tB\a\2\2=\a*\6=\6+\0055\6,\0=\6-\5B\3\2\0019\3\5\0019\3.\3'\5/\0005\0063\0009\a\25\0019\a\26\a4\t\3\0005\n0\0>\n\1\t5\n1\0>\n\2\t4\n\3\0005\v2\0>\v\1\nB\a\3\2=\a\26\6B\3\3\1K\0\1\0K\0\1\0\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\bgit\14gitcommit\rfiletype\17experimental\1\0\2\15ghost_text\2\16native_menu\1\15formatting\vformat\1\0\0\tmenu\1\0\5\rnvim_lsp\n[LSP]\vbuffer\n[BUF]\tpath\n[PTH]\fluasnip\n[SNP]\rnvim_lua\n[API]\15symbol_map\1\0\25\fKeyword\tÓ≠¢ \vModule\tÓ™ã \fSnippet\tÓ≠¶ \nEvent\tÓ™Ü \nColor\tÓ≠ú \14Interface\tÓ≠° \15EnumMember\tÓ™ï \nClass\tÓ≠õ \vFolder\tÓ™É \rConstant\tÓ≠ù \tText\tÓ™ì \rVariable\tÓ™à \14Reference\tÓ™î \vMethod\tÓ™å \vStruct\tÓ™ë \tFile\tÓ©ª \rFunction\tÓ™å \16Constructor\tÓ™å \nField\tÓ≠ü \rOperator\tÓ≠§ \rProperty\tÓ≠• \18TypeParameter\tÓ™í \tUnit\tÓ™ñ \nValue\tÓ™ï \tEnum\tÓ™ï \1\0\2\rmaxwidth\0032\tmode\16symbol_text\15cmp_format\1\0\1\tname\vbuffer\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\tinit\flspkind\bcmp\frequire\npcall\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\ns\0\3\n\1\b\0\17\15\0\2\0X\3\3Ä'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1¿\tdesc\vbuffer\1\0\0\6n\bset\vkeymap\bvim\nLSP: s\0\3\n\1\b\0\17\15\0\2\0X\3\3Ä'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1¿\tdesc\vbuffer\1\0\0\6x\bset\vkeymap\bvim\nLSP: d\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintÛ\v\1\2\n\0=\0}3\2\0\0003\3\1\0\18\4\2\0'\6\2\0'\a\3\0'\b\4\0B\4\4\1\18\4\2\0'\6\5\0'\a\6\0'\b\a\0B\4\4\1\18\4\3\0'\6\5\0'\a\b\0'\b\a\0B\4\4\1\18\4\2\0'\6\t\0'\a\n\0'\b\v\0B\4\4\1\18\4\2\0'\6\f\0'\a\r\0'\b\14\0B\4\4\1\18\4\2\0'\6\15\0'\a\16\0'\b\17\0B\4\4\1\18\4\2\0'\6\18\0'\a\19\0'\b\20\0B\4\4\1\18\4\2\0'\6\21\0006\a\22\0009\a\23\a9\a\24\a9\a\25\a'\b\26\0B\4\4\1\18\4\2\0'\6\27\0006\a\22\0009\a\23\a9\a\24\a9\a\28\a'\b\29\0B\4\4\1\18\4\2\0'\6\30\0006\a\31\0'\t \0B\a\2\0029\a!\aB\4\3\1\18\4\2\0'\6\"\0006\a\31\0'\t \0B\a\2\0029\a#\a'\b$\0B\4\4\1\18\4\2\0'\6%\0006\a\31\0'\t \0B\a\2\0029\a&\a'\b'\0B\4\4\1\18\4\2\0'\6(\0'\a)\0'\b*\0B\4\4\1\18\4\2\0'\6+\0'\a,\0'\b-\0B\4\4\1\18\4\2\0'\6.\0006\a\22\0009\a\23\a9\a\24\a9\a/\a'\b0\0B\4\4\1\18\4\2\0'\0061\0006\a\22\0009\a\23\a9\a\24\a9\a2\a'\b3\0B\4\4\1\18\4\2\0'\0064\0006\a\22\0009\a\23\a9\a\24\a9\a5\a'\b6\0B\4\4\1\18\4\2\0'\0067\0006\a\22\0009\a\23\a9\a\24\a9\a8\a'\b9\0B\4\4\1\18\4\2\0'\6:\0003\a;\0'\b<\0B\4\4\0012\0\0ÄK\0\1\0\31[W]orkspace [L]ist Folders\0\15<leader>wl [W]orkspace [R]emove Folder\28remove_workspace_folder\15<leader>wr\29[W]orkspace [A]dd Folder\25add_workspace_folder\15<leader>wa\22Type [D]efinition\20type_definition\14<leader>D\25[G]oto [D]eclaration\16declaration\agD\28Signature Documentation$<cmd>Lspsaga signature_help<cr>\ags\24Hover Documentation\31<cmd>Lspsaga hover_doc<cr>\6K\26[W]orkspace [S]ymbols\"lsp_dynamic_workspace_symbols\15<leader>ws\25[D]ocument [S]ymbols\25lsp_document_symbols\15<leader>ds\19lsp_references\22telescope.builtin\frequire\agr\28[G]oto [I]mplementation\19implementation\agi\24[G]oto [D]efinition\15definition\bbuf\blsp\bvim\agd\14Scroll upF<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>\n<C-f>\16Scroll downE<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>\n<C-b>\25[C]ode [D]iagnostics+<cmd>Lspsaga show_line_diagnostics<cr>\15<leader>cd\r[Fi]nder <cmd>Lspsaga lsp_finder<cr>\15<leader>fi(:<c-u>Lspsaga range_code_action<cr>\18Code [A]ction!<cmd>Lspsaga code_action<cr>\14<leader>a\15[R]e[n]ame\28<cmd>Lspsaga rename<cr>\15<leader>rn\0\0ƒ\2\0\2\v\2\18\0&\15\0\0\0X\2\14Ä6\2\0\0009\2\1\2'\4\2\0006\5\3\0009\5\4\5\18\a\0\0B\5\2\0A\2\1\0026\3\3\0009\3\5\0039\3\6\0039\3\a\3\18\5\2\0B\3\2\1\14\0\1\0X\2\1ÄK\0\1\0006\2\3\0009\2\5\0029\2\b\0029\2\t\2+\4\0\0006\5\3\0009\5\n\5'\a\v\0-\b\0\0005\t\r\0009\n\f\1=\n\14\tB\5\4\0025\6\16\0-\a\1\0009\a\15\a=\a\17\6B\2\4\1K\0\1\0\0¿\1\0\14client_id\1\0\0\aid\16diagnostics\1\0\0\nitems\tkeep\15tbl_extend\27on_publish_diagnostics\15diagnostic\nerror\blog\blsp\finspect\bvim&ruby-lsp - diagnostics error - %s\vformat\vstringü\1\1\0\6\2\t\0\0156\0\0\0009\0\1\0009\0\2\0009\0\3\0-\2\0\0B\0\2\2-\1\1\0009\1\4\1'\3\5\0005\4\6\0=\0\a\0043\5\b\0B\1\4\0012\0\0ÄK\0\1\0\1¿\0¿\0\17textDocument\1\0\0\28textDocument/diagnostic\frequest\30make_text_document_params\tutil\blsp\bvimÄ\2\1\2\b\1\r\0\0256\2\0\0-\4\0\0\18\5\0\0\18\6\1\0B\2\4\0013\2\1\0\18\3\2\0B\3\1\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0005\6\6\0B\3\3\0026\4\2\0009\4\3\0049\4\a\0045\6\b\0005\a\t\0=\1\n\a=\2\v\a=\3\f\aB\4\3\0012\0\0ÄK\0\1\0\2¿\ngroup\rcallback\vbuffer\1\0\0\1\5\0\0\rBufEnter\16BufWritePre\16InsertLeave\16TextChanged\24nvim_create_autocmd\1\0\1\nclear\1\fruby_ls\24nvim_create_augroup\bapi\bvim\0\npcallå\f\1\0\14\0:\0o6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0gÄ6\2\3\0009\2\4\0029\2\5\2'\4\6\0005\5\a\0B\2\3\0016\2\3\0009\2\4\0029\2\5\2'\4\b\0005\5\t\0B\2\3\0016\2\3\0009\2\4\0029\2\5\2'\4\n\0005\5\v\0B\2\3\0016\2\3\0009\2\4\0029\2\5\2'\4\f\0005\5\r\0B\2\3\0016\2\3\0009\2\14\0029\2\15\0025\4\16\0B\2\2\0013\2\17\0006\3\1\0'\5\18\0B\3\2\0029\3\19\0036\5\3\0009\5\20\0059\5\21\0059\5\22\5B\5\1\0A\3\0\0029\4\23\0019\4\24\0045\6\25\0=\2\26\6=\3\27\0065\a%\0005\b\29\0005\t\28\0=\t\30\b5\t \0005\n\31\0=\n!\t=\t\"\b5\t#\0=\t$\b=\b&\a=\a'\6B\4\2\0019\4(\0019\4\24\0045\6*\0005\a)\0=\a+\6=\2\26\6=\3\27\0065\a,\0=\a-\0065\a/\0005\b.\0=\b(\a=\a'\6B\4\2\0013\0040\0009\0051\0019\5\24\0055\a3\0005\b2\0=\b+\a=\4\26\a=\3\27\a5\b4\0005\t5\0=\t6\b=\b-\aB\5\2\0015\0057\0006\0068\0\18\b\5\0B\6\2\4X\t\tÄ6\v\1\0'\r\2\0B\v\2\0028\v\n\v9\v\24\v5\r9\0=\2\26\r=\3\27\rB\v\2\1E\t\3\3R\tı\1272\0\0ÄK\0\1\0K\0\1\0\1\0\0\vipairs\1\t\0\0\rtsserver\vclangd\ncssls\thtml\fpyright\vbashls\rdockerls\vyamlls\21enabled_features\1\16\0\0\19documentSymbol\17documentLink\nhover\18foldingRanges\20selectionRanges\25semanticHighlighting\15formatting\21onTypeFormatting\16diagnostics\16codeActions\22codeActionResolve\22documentHighlight\14inlayHint\19pathCompletion\rcodeLens\1\0\1 experimentalFeaturesEnabled\2\1\0\0\1\4\0\0\vbundle\texec\rruby-lsp\fruby_ls\0\1\0\0\1\0\2\15formatting\1\16diagnostics\1\17init_options\1\0\1\15formatting\1\bcmd\1\0\0\1\5\0\0\vbundle\texec\15solargraph\nstdio\15solargraph\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\1\0\0\nsetup\vlua_ls\29make_client_capabilities\rprotocol\blsp\25default_capabilities\17cmp_nvim_lsp\0\1\0\1\17virtual_text\1\vconfig\15diagnostic\1\0\3\nnumhl\23DiagnosticSignInfo\ttext\bÔëâ\vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\3\nnumhl\23DiagnosticSignHint\ttext\bÔ†µ\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\3\nnumhl\23DiagnosticSignWarn\ttext\bÔî©\vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\3\nnumhl\24DiagnosticSignError\ttext\bÔôô\vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\14lspconfig\frequire\npcall\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n´\1\0\0\b\0\v\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\t\0005\5\a\0005\6\5\0005\a\4\0=\a\6\6=\6\b\5=\5\n\4B\2\2\1K\0\1\0\factions\1\0\0\14open_file\1\0\0\18window_picker\1\0\1\17quit_on_open\2\1\0\1\venable\1\nsetup\14nvim-tree\frequire\npcall\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n∫\2\0\0\6\0\r\0\0196\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\4B\2\2\1K\0\1\0\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\tbash\blua\tdart\tjson\tyaml\vpython\bcpp\15typescript\bcss\tscss\thtml\truby\thelp\nsetup\28nvim-treesitter.configs\frequire\npcall\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["refactoring.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16refactoring\frequire\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-bundler"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/vim-bundler",
    url = "https://github.com/tpope/vim-bundler"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-rhubarb.git"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/vim-rhubarb.git",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/oscar/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nû\2\0\0\n\0\17\1\0316\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\15\0004\5\3\0009\6\4\0019\6\5\0069\6\6\0069\6\a\0065\b\t\0005\t\b\0=\t\n\bB\6\2\2>\6\1\0059\6\4\0019\6\v\0069\6\f\0069\6\a\0065\b\14\0005\t\r\0=\t\n\bB\6\2\0?\6\0\0=\5\16\4B\2\2\1K\0\1\0\fsources\1\0\0\1\0\0\1\4\0\0\vbundle\texec\ferblint\rerb_lint\15formatting\fcommand\1\0\0\1\4\0\0\vbundle\texec\treek\twith\treek\16diagnostics\rbuiltins\nsetup\fnull-ls\frequire\npcall\5ÄÄ¿ô\4\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\n£\1\0\0\a\0\t\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4B\2\2\1K\0\1\0\27automatic_installation\1\0\0\fexclude\1\0\0\1\3\0\0\15solargraph\fruby_ls\nsetup\20mason-lspconfig\frequire\npcall\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: refactoring.nvim
time([[Config for refactoring.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16refactoring\frequire\0", "config", "refactoring.nvim")
time([[Config for refactoring.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n∫\2\0\0\6\0\r\0\0196\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\4B\2\2\1K\0\1\0\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\14\0\0\tbash\blua\tdart\tjson\tyaml\vpython\bcpp\15typescript\bcss\tscss\thtml\truby\thelp\nsetup\28nvim-treesitter.configs\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\ní\1\0\0\4\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\5\0005\3\6\0B\0\3\1K\0\1\0\1\2\0\0\fflutter\tdart\20filetype_extend\fluasnip\14lazy_load luasnip/loaders/from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\n´\5\0\0\t\0!\0,6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0005\6\b\0=\6\t\0055\6\n\0005\a\f\0005\b\v\0=\b\r\a5\b\14\0=\b\15\a5\b\16\0=\b\17\a5\b\18\0=\b\19\a=\a\20\0065\a\22\0005\b\21\0=\b\r\a5\b\23\0=\b\15\a5\b\24\0=\b\17\a5\b\25\0=\b\19\a=\a\26\6=\6\27\5=\5\28\4B\2\2\0016\2\29\0009\2\30\0029\2\31\2'\4 \0B\2\2\1K\0\1\0\27colorscheme catppuccin\17nvim_command\bapi\bvim\17integrations\15native_lsp\15underlines\1\2\0\0\14underline\1\2\0\0\14underline\1\2\0\0\14underline\1\0\0\1\2\0\0\14underline\17virtual_text\16information\1\2\0\0\vitalic\rwarnings\1\2\0\0\vitalic\nhints\1\2\0\0\vitalic\verrors\1\0\0\1\2\0\0\vitalic\1\0\1\fenabled\2\21indent_blankline\1\0\2\fenabled\2\26colored_indent_levels\1\1\0\t\rnvimtree\2\rlsp_saga\2\14dashboard\2\16lsp_trouble\2\14telescope\2\rmarkdown\2\bcmp\2\rgitsigns\2\15treesitter\2\15background\1\0\2\tdark\nmocha\nlight\nlatte\1\0\2\27transparent_background\2\fflavour\nlatte\nsetup\15catppuccin\frequire\npcall\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n•\2\0\0\6\0\t\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\4B\2\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\v\0\0\thelp\rterminal\14dashboard\rstartify\rNvimTree\rmarkdown\ttext\vpacker\nmason\5\1\0\3#show_trailing_blankline_indent\1\28show_first_indent_level\1\tchar\b‚ñè\nsetup\21indent_blankline\frequire\npcall\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n´\1\0\0\b\0\v\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\t\0005\5\a\0005\6\5\0005\a\4\0=\a\6\6=\6\b\5=\5\n\4B\2\2\1K\0\1\0\factions\1\0\0\14open_file\1\0\0\18window_picker\1\0\1\17quit_on_open\2\1\0\1\venable\1\nsetup\14nvim-tree\frequire\npcall\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: cmp-git
time([[Config for cmp-git]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fcmp_git\frequire\0", "config", "cmp-git")
time([[Config for cmp-git]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\ns\0\3\n\1\b\0\17\15\0\2\0X\3\3Ä'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1¿\tdesc\vbuffer\1\0\0\6n\bset\vkeymap\bvim\nLSP: s\0\3\n\1\b\0\17\15\0\2\0X\3\3Ä'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1¿\tdesc\vbuffer\1\0\0\6x\bset\vkeymap\bvim\nLSP: d\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintÛ\v\1\2\n\0=\0}3\2\0\0003\3\1\0\18\4\2\0'\6\2\0'\a\3\0'\b\4\0B\4\4\1\18\4\2\0'\6\5\0'\a\6\0'\b\a\0B\4\4\1\18\4\3\0'\6\5\0'\a\b\0'\b\a\0B\4\4\1\18\4\2\0'\6\t\0'\a\n\0'\b\v\0B\4\4\1\18\4\2\0'\6\f\0'\a\r\0'\b\14\0B\4\4\1\18\4\2\0'\6\15\0'\a\16\0'\b\17\0B\4\4\1\18\4\2\0'\6\18\0'\a\19\0'\b\20\0B\4\4\1\18\4\2\0'\6\21\0006\a\22\0009\a\23\a9\a\24\a9\a\25\a'\b\26\0B\4\4\1\18\4\2\0'\6\27\0006\a\22\0009\a\23\a9\a\24\a9\a\28\a'\b\29\0B\4\4\1\18\4\2\0'\6\30\0006\a\31\0'\t \0B\a\2\0029\a!\aB\4\3\1\18\4\2\0'\6\"\0006\a\31\0'\t \0B\a\2\0029\a#\a'\b$\0B\4\4\1\18\4\2\0'\6%\0006\a\31\0'\t \0B\a\2\0029\a&\a'\b'\0B\4\4\1\18\4\2\0'\6(\0'\a)\0'\b*\0B\4\4\1\18\4\2\0'\6+\0'\a,\0'\b-\0B\4\4\1\18\4\2\0'\6.\0006\a\22\0009\a\23\a9\a\24\a9\a/\a'\b0\0B\4\4\1\18\4\2\0'\0061\0006\a\22\0009\a\23\a9\a\24\a9\a2\a'\b3\0B\4\4\1\18\4\2\0'\0064\0006\a\22\0009\a\23\a9\a\24\a9\a5\a'\b6\0B\4\4\1\18\4\2\0'\0067\0006\a\22\0009\a\23\a9\a\24\a9\a8\a'\b9\0B\4\4\1\18\4\2\0'\6:\0003\a;\0'\b<\0B\4\4\0012\0\0ÄK\0\1\0\31[W]orkspace [L]ist Folders\0\15<leader>wl [W]orkspace [R]emove Folder\28remove_workspace_folder\15<leader>wr\29[W]orkspace [A]dd Folder\25add_workspace_folder\15<leader>wa\22Type [D]efinition\20type_definition\14<leader>D\25[G]oto [D]eclaration\16declaration\agD\28Signature Documentation$<cmd>Lspsaga signature_help<cr>\ags\24Hover Documentation\31<cmd>Lspsaga hover_doc<cr>\6K\26[W]orkspace [S]ymbols\"lsp_dynamic_workspace_symbols\15<leader>ws\25[D]ocument [S]ymbols\25lsp_document_symbols\15<leader>ds\19lsp_references\22telescope.builtin\frequire\agr\28[G]oto [I]mplementation\19implementation\agi\24[G]oto [D]efinition\15definition\bbuf\blsp\bvim\agd\14Scroll upF<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>\n<C-f>\16Scroll downE<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>\n<C-b>\25[C]ode [D]iagnostics+<cmd>Lspsaga show_line_diagnostics<cr>\15<leader>cd\r[Fi]nder <cmd>Lspsaga lsp_finder<cr>\15<leader>fi(:<c-u>Lspsaga range_code_action<cr>\18Code [A]ction!<cmd>Lspsaga code_action<cr>\14<leader>a\15[R]e[n]ame\28<cmd>Lspsaga rename<cr>\15<leader>rn\0\0ƒ\2\0\2\v\2\18\0&\15\0\0\0X\2\14Ä6\2\0\0009\2\1\2'\4\2\0006\5\3\0009\5\4\5\18\a\0\0B\5\2\0A\2\1\0026\3\3\0009\3\5\0039\3\6\0039\3\a\3\18\5\2\0B\3\2\1\14\0\1\0X\2\1ÄK\0\1\0006\2\3\0009\2\5\0029\2\b\0029\2\t\2+\4\0\0006\5\3\0009\5\n\5'\a\v\0-\b\0\0005\t\r\0009\n\f\1=\n\14\tB\5\4\0025\6\16\0-\a\1\0009\a\15\a=\a\17\6B\2\4\1K\0\1\0\0¿\1\0\14client_id\1\0\0\aid\16diagnostics\1\0\0\nitems\tkeep\15tbl_extend\27on_publish_diagnostics\15diagnostic\nerror\blog\blsp\finspect\bvim&ruby-lsp - diagnostics error - %s\vformat\vstringü\1\1\0\6\2\t\0\0156\0\0\0009\0\1\0009\0\2\0009\0\3\0-\2\0\0B\0\2\2-\1\1\0009\1\4\1'\3\5\0005\4\6\0=\0\a\0043\5\b\0B\1\4\0012\0\0ÄK\0\1\0\1¿\0¿\0\17textDocument\1\0\0\28textDocument/diagnostic\frequest\30make_text_document_params\tutil\blsp\bvimÄ\2\1\2\b\1\r\0\0256\2\0\0-\4\0\0\18\5\0\0\18\6\1\0B\2\4\0013\2\1\0\18\3\2\0B\3\1\0016\3\2\0009\3\3\0039\3\4\3'\5\5\0005\6\6\0B\3\3\0026\4\2\0009\4\3\0049\4\a\0045\6\b\0005\a\t\0=\1\n\a=\2\v\a=\3\f\aB\4\3\0012\0\0ÄK\0\1\0\2¿\ngroup\rcallback\vbuffer\1\0\0\1\5\0\0\rBufEnter\16BufWritePre\16InsertLeave\16TextChanged\24nvim_create_autocmd\1\0\1\nclear\1\fruby_ls\24nvim_create_augroup\bapi\bvim\0\npcallå\f\1\0\14\0:\0o6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0gÄ6\2\3\0009\2\4\0029\2\5\2'\4\6\0005\5\a\0B\2\3\0016\2\3\0009\2\4\0029\2\5\2'\4\b\0005\5\t\0B\2\3\0016\2\3\0009\2\4\0029\2\5\2'\4\n\0005\5\v\0B\2\3\0016\2\3\0009\2\4\0029\2\5\2'\4\f\0005\5\r\0B\2\3\0016\2\3\0009\2\14\0029\2\15\0025\4\16\0B\2\2\0013\2\17\0006\3\1\0'\5\18\0B\3\2\0029\3\19\0036\5\3\0009\5\20\0059\5\21\0059\5\22\5B\5\1\0A\3\0\0029\4\23\0019\4\24\0045\6\25\0=\2\26\6=\3\27\0065\a%\0005\b\29\0005\t\28\0=\t\30\b5\t \0005\n\31\0=\n!\t=\t\"\b5\t#\0=\t$\b=\b&\a=\a'\6B\4\2\0019\4(\0019\4\24\0045\6*\0005\a)\0=\a+\6=\2\26\6=\3\27\0065\a,\0=\a-\0065\a/\0005\b.\0=\b(\a=\a'\6B\4\2\0013\0040\0009\0051\0019\5\24\0055\a3\0005\b2\0=\b+\a=\4\26\a=\3\27\a5\b4\0005\t5\0=\t6\b=\b-\aB\5\2\0015\0057\0006\0068\0\18\b\5\0B\6\2\4X\t\tÄ6\v\1\0'\r\2\0B\v\2\0028\v\n\v9\v\24\v5\r9\0=\2\26\r=\3\27\rB\v\2\1E\t\3\3R\tı\1272\0\0ÄK\0\1\0K\0\1\0\1\0\0\vipairs\1\t\0\0\rtsserver\vclangd\ncssls\thtml\fpyright\vbashls\rdockerls\vyamlls\21enabled_features\1\16\0\0\19documentSymbol\17documentLink\nhover\18foldingRanges\20selectionRanges\25semanticHighlighting\15formatting\21onTypeFormatting\16diagnostics\16codeActions\22codeActionResolve\22documentHighlight\14inlayHint\19pathCompletion\rcodeLens\1\0\1 experimentalFeaturesEnabled\2\1\0\0\1\4\0\0\vbundle\texec\rruby-lsp\fruby_ls\0\1\0\0\1\0\2\15formatting\1\16diagnostics\1\17init_options\1\0\1\15formatting\1\bcmd\1\0\0\1\5\0\0\vbundle\texec\15solargraph\nstdio\15solargraph\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\1\0\0\nsetup\vlua_ls\29make_client_capabilities\rprotocol\blsp\25default_capabilities\17cmp_nvim_lsp\0\1\0\1\17virtual_text\1\vconfig\15diagnostic\1\0\3\nnumhl\23DiagnosticSignInfo\ttext\bÔëâ\vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\3\nnumhl\23DiagnosticSignHint\ttext\bÔ†µ\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\3\nnumhl\23DiagnosticSignWarn\ttext\bÔî©\vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\3\nnumhl\24DiagnosticSignError\ttext\bÔôô\vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\14lspconfig\frequire\npcall\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nÒ\5\0\0\a\0\v\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\4\t\0005\5\5\0005\6\4\0=\6\6\0055\6\a\0=\6\b\5=\5\n\4B\2\2\1K\0\1\0\fkeymaps\1\0\0\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\0\b\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>gb0<cmd>lua require\"gitsigns\".blame_line()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\nsetup\rgitsigns\frequire\npcall\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n`\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\15catppuccin\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireö\n\1\0\f\0004\0e6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1Ä2\0]Ä6\2\1\0'\4\3\0B\2\2\0029\3\4\2B\3\1\0019\3\5\0015\5\t\0005\6\a\0003\a\6\0=\a\b\6=\6\n\0059\6\v\0019\6\f\0069\6\r\0065\b\15\0009\t\v\0019\t\14\t)\v¸ˇB\t\2\2=\t\16\b9\t\v\0019\t\14\t)\v\4\0B\t\2\2=\t\17\b9\t\v\0019\t\18\tB\t\1\2=\t\19\b9\t\v\0019\t\20\tB\t\1\2=\t\21\b9\t\v\0019\t\22\t5\v\23\0B\t\2\2=\t\24\bB\6\2\2=\6\v\0059\6\25\0019\6\26\0064\b\b\0005\t\27\0>\t\1\b5\t\28\0>\t\2\b5\t\29\0>\t\3\b5\t\30\0>\t\4\b5\t\31\0>\t\5\b5\t \0>\t\6\b5\t!\0>\t\a\b4\t\3\0005\n\"\0>\n\1\tB\6\3\2=\6\26\0055\6)\0009\a#\0025\t$\0005\n%\0=\n&\t5\n'\0=\n(\tB\a\2\2=\a*\6=\6+\0055\6,\0=\6-\5B\3\2\0019\3\5\0019\3.\3'\5/\0005\0063\0009\a\25\0019\a\26\a4\t\3\0005\n0\0>\n\1\t5\n1\0>\n\2\t4\n\3\0005\v2\0>\v\1\nB\a\3\2=\a\26\6B\3\3\1K\0\1\0K\0\1\0\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\bgit\14gitcommit\rfiletype\17experimental\1\0\2\15ghost_text\2\16native_menu\1\15formatting\vformat\1\0\0\tmenu\1\0\5\rnvim_lsp\n[LSP]\vbuffer\n[BUF]\tpath\n[PTH]\fluasnip\n[SNP]\rnvim_lua\n[API]\15symbol_map\1\0\25\fKeyword\tÓ≠¢ \vModule\tÓ™ã \fSnippet\tÓ≠¶ \nEvent\tÓ™Ü \nColor\tÓ≠ú \14Interface\tÓ≠° \15EnumMember\tÓ™ï \nClass\tÓ≠õ \vFolder\tÓ™É \rConstant\tÓ≠ù \tText\tÓ™ì \rVariable\tÓ™à \14Reference\tÓ™î \vMethod\tÓ™å \vStruct\tÓ™ë \tFile\tÓ©ª \rFunction\tÓ™å \16Constructor\tÓ™å \nField\tÓ≠ü \rOperator\tÓ≠§ \rProperty\tÓ≠• \18TypeParameter\tÓ™í \tUnit\tÓ™ñ \nValue\tÓ™ï \tEnum\tÓ™ï \1\0\2\rmaxwidth\0032\tmode\16symbol_text\15cmp_format\1\0\1\tname\vbuffer\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\tinit\flspkind\bcmp\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Conditional loads
time([[Conditional loading of telescope-fzf-native.nvim]], true)
  require("packer.load")({"telescope-fzf-native.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of telescope-fzf-native.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'cmp-emoji', 'cmp-calc'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
