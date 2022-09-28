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
local package_path_str = "/home/oscargl/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/oscargl/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/oscargl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/oscargl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/oscargl/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\n�\1\0\0\4\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\5\0005\3\6\0B\0\3\1K\0\1\0\1\2\0\0\fflutter\tdart\20filetype_extend\fluasnip\14lazy_load luasnip/loaders/from_vscode\frequire\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    after_files = { "/home/oscargl/.local/share/nvim/site/pack/packer/opt/cmp-calc/after/plugin/cmp_calc.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/opt/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-emoji"] = {
    after_files = { "/home/oscargl/.local/share/nvim/site/pack/packer/opt/cmp-emoji/after/plugin/cmp_emoji.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/opt/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-git"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fcmp_git\frequire\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/cmp-git",
    url = "https://github.com/petertriho/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\f\0\0\4\0\v\0\0226\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0005\2\4\0=\2\3\0014\2\6\0005\3\6\0>\3\1\0025\3\a\0>\3\2\0025\3\b\0>\3\3\0025\3\t\0>\3\4\0025\3\n\0>\3\5\2=\2\5\1K\0\1\0\1\0\4\ticon\n  \tdesc-New File                                \rshortcut\fSPC x x\vaction\21DashboardNewFile\1\0\4\ticon\n  \tdesc-Open Config                             \rshortcut\fSPC x x\vaction;new | wincmd j | q | cd ~/.config/nvim/ | e ./init.lua\1\0\4\ticon\n  \tdesc-Find  word                              \rshortcut\fSPC f g\vaction\24Telescope live_grep\1\0\4\ticon\n  \tdesc-Recently opened files                   \rshortcut\fSPC x x\vaction\23Telescope oldfiles\1\0\4\ticon\n  \tdesc-Find  File                              \rshortcut\fSPC f f\vaction:Telescope find_files find_command=rg,--hidden,--files\18custom_center\1\r\0\0\5\5\5�\1 ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗�\1 ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║�\1 ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║�\1 ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║�\1 ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║�\1 ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝\5\5\5\18custom_header\14dashboard\frequire\npcall\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["flutter-tools.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\b\0\v\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\t\0005\5\a\0005\6\5\0005\a\4\0=\a\6\6=\6\b\5=\5\n\4B\2\2\1K\0\1\0\blsp\1\0\0\rsettings\1\0\0\28analysisExcludedFolders\1\0\0\1\3\0\0\29/home/oscargl/.pub-cache&/home/oscargl/development/flutter\nsetup\18flutter-tools\frequire\npcall\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/opt/flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\a\0\v\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\t\0005\5\5\0005\6\4\0=\6\6\0055\6\a\0=\6\b\5=\5\n\4B\2\2\1K\0\1\0\fkeymaps\1\0\0\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\0\b\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\nsetup\rgitsigns\frequire\npcall\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\t\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\4B\2\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\v\0\0\thelp\rterminal\14dashboard\rstartify\rNvimTree\rmarkdown\ttext\vpacker\18lsp-installer\5\1\0\3\tchar\b▏\28show_first_indent_level\1#show_trailing_blankline_indent\1\nsetup\21indent_blankline\frequire\npcall\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nZ\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\a\0\v\0\0216\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\t\0004\5\3\0009\6\4\0019\6\5\0069\6\6\6>\6\1\0059\6\4\0019\6\a\0069\6\b\6>\6\2\5=\5\n\4B\2\2\1K\0\1\0\fsources\1\0\0\vflake8\16diagnostics\nblack\15formatting\rbuiltins\nsetup\fnull-ls\frequire\npcall\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\n\1\0\f\0009\0q6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0i�6\2\1\0'\4\3\0B\2\2\0029\3\4\2B\3\1\0019\3\5\0015\5\t\0005\6\a\0003\a\6\0=\a\b\6=\6\n\0055\6\14\0009\a\v\0019\a\f\a9\a\r\aB\a\1\2=\a\15\0069\a\v\0019\a\f\a9\a\r\aB\a\1\2=\a\16\6=\6\f\0059\6\17\0019\6\18\0069\6\19\0065\b\21\0009\t\17\0019\t\20\t)\v��B\t\2\2=\t\22\b9\t\17\0019\t\20\t)\v\4\0B\t\2\2=\t\23\b9\t\17\0019\t\24\tB\t\1\2=\t\25\b9\t\17\0019\t\26\tB\t\1\2=\t\27\b9\t\17\0019\t\28\t5\v\29\0B\t\2\2=\t\30\bB\6\2\2=\6\17\0059\6\v\0019\6\31\0064\b\b\0005\t \0>\t\1\b5\t!\0>\t\2\b5\t\"\0>\t\3\b5\t#\0>\t\4\b5\t$\0>\t\5\b5\t%\0>\t\6\b5\t&\0>\t\a\b4\t\3\0005\n'\0>\n\1\tB\6\3\2=\6\31\0055\6.\0009\a(\0025\t)\0005\n*\0=\n+\t5\n,\0=\n-\tB\a\2\2=\a/\6=\0060\0055\0061\0=\0062\5B\3\2\0019\3\5\0019\0033\3'\0054\0005\0068\0009\a\v\0019\a\31\a4\t\3\0005\n5\0>\n\1\t5\n6\0>\n\2\t4\n\3\0005\v7\0>\v\1\nB\a\3\2=\a\31\6B\3\3\1K\0\1\0K\0\1\0\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\bgit\14gitcommit\rfiletype\17experimental\1\0\2\15ghost_text\2\16native_menu\1\15formatting\vformat\1\0\0\tmenu\1\0\5\fluasnip\n[SNP]\rnvim_lua\n[API]\tpath\n[PTH]\rnvim_lsp\n[LSP]\vbuffer\n[BUF]\15symbol_map\1\0\25\nValue\t \rConstant\t \18TypeParameter\t \14Reference\t \rOperator\t \tText\t \fKeyword\t \vFolder\t \vMethod\t \fSnippet\t \15EnumMember\t \rFunction\t \tEnum\t \16Constructor\t \nEvent\t \vStruct\t \nColor\t \tFile\t \nField\t \rVariable\t \nClass\t \14Interface\t \vModule\t \rProperty\t \tUnit\t \1\0\2\tmode\16symbol_text\rmaxwidth\0032\15cmp_format\1\0\1\tname\vbuffer\1\0\2\19keyword_length\3\5\tname\vbuffer\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\tinit\flspkind\bcmp\frequire\npcall\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\ns\0\3\n\1\b\0\17\15\0\2\0X\3\3�'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1�\tdesc\vbuffer\1\0\0\6n\bset\vkeymap\bvim\nLSP: s\0\3\n\1\b\0\17\15\0\2\0X\3\3�'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1�\tdesc\vbuffer\1\0\0\6x\bset\vkeymap\bvim\nLSP: d\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint�\r\1\2\n\0C\0�\0013\2\0\0003\3\1\0\18\4\2\0'\6\2\0'\a\3\0'\b\4\0B\4\4\1\18\4\2\0'\6\5\0'\a\6\0'\b\a\0B\4\4\1\18\4\3\0'\6\5\0'\a\b\0'\b\a\0B\4\4\1\18\4\2\0'\6\t\0'\a\n\0'\b\v\0B\4\4\1\18\4\2\0'\6\f\0'\a\r\0'\b\14\0B\4\4\1\18\4\2\0'\6\15\0'\a\16\0'\b\17\0B\4\4\1\18\4\2\0'\6\18\0'\a\19\0'\b\20\0B\4\4\1\18\4\2\0'\6\21\0006\a\22\0009\a\23\a9\a\24\a9\a\25\a'\b\26\0B\4\4\1\18\4\2\0'\6\27\0006\a\22\0009\a\23\a9\a\24\a9\a\28\a'\b\29\0B\4\4\1\18\4\2\0'\6\30\0006\a\31\0'\t \0B\a\2\0029\a!\aB\4\3\1\18\4\2\0'\6\"\0006\a\31\0'\t \0B\a\2\0029\a#\a'\b$\0B\4\4\1\18\4\2\0'\6%\0006\a\31\0'\t \0B\a\2\0029\a&\a'\b'\0B\4\4\1\18\4\2\0'\6(\0'\a)\0'\b*\0B\4\4\1\18\4\2\0'\6+\0'\a,\0'\b-\0B\4\4\1\18\4\2\0'\6.\0006\a\22\0009\a\23\a9\a\24\a9\a/\a'\b0\0B\4\4\1\18\4\2\0'\0061\0006\a\22\0009\a\23\a9\a\24\a9\a2\a'\b3\0B\4\4\1\18\4\2\0'\0064\0006\a\22\0009\a\23\a9\a\24\a9\a5\a'\b6\0B\4\4\1\18\4\2\0'\0067\0006\a\22\0009\a\23\a9\a\24\a9\a8\a'\b9\0B\4\4\1\18\4\2\0'\6:\0003\a;\0'\b<\0B\4\4\0016\4\22\0009\4=\0049\4>\4\18\6\1\0'\a?\0006\b\22\0009\b\23\b9\b\24\b9\b@\b\14\0\b\0X\t\4�6\b\22\0009\b\23\b9\b\24\b9\bA\b5\tB\0B\4\5\0012\0\0�K\0\1\0\1\0\1\tdesc#Format current buffer with LSP\15formatting\vformat\vFormat!nvim_buf_create_user_command\bapi\31[W]orkspace [L]ist Folders\0\15<leader>wl [W]orkspace [R]emove Folder\28remove_workspace_folder\15<leader>wr\29[W]orkspace [A]dd Folder\25add_workspace_folder\15<leader>wa\22Type [D]efinition\20type_definition\14<leader>D\25[G]oto [D]eclaration\16declaration\agD\28Signature Documentation$<cmd>Lspsaga signature_help<cr>\ags\24Hover Documentation\31<cmd>Lspsaga hover_doc<cr>\6K\26[W]orkspace [S]ymbols\"lsp_dynamic_workspace_symbols\15<leader>ws\25[D]ocument [S]ymbols\25lsp_document_symbols\15<leader>ds\19lsp_references\22telescope.builtin\frequire\agr\28[G]oto [I]mplementation\19implementation\agi\24[G]oto [D]efinition\15definition\bbuf\blsp\bvim\agd\14Scroll upF<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>\n<C-f>\16Scroll downE<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>\n<C-b>\25[C]ode [D]iagnostics+<cmd>Lspsaga show_line_diagnostics<cr>\15<leader>cd\r[Fi]nder <cmd>Lspsaga lsp_finder<cr>\15<leader>fi(:<c-u>Lspsaga range_code_action<cr>\18Code [A]ction!<cmd>Lspsaga code_action<cr>\14<leader>a\15[R]e[n]ame\28<cmd>Lspsaga rename<cr>\15<leader>rn\0\0�\5\1\0\r\0#\0G6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\2\15\0\0\0X\2\2�\14\0\1\0X\2\1�2\0;�3\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0036\5\6\0009\5\a\0059\5\b\0059\5\t\5B\5\1\0A\3\0\0029\4\n\0005\6\v\0B\4\2\0019\4\f\0019\4\n\0045\6\r\0=\2\14\6=\3\15\0065\a\25\0005\b\17\0005\t\16\0=\t\18\b5\t\20\0005\n\19\0=\n\21\t=\t\22\b5\t\23\0=\t\24\b=\b\26\a=\a\27\6B\4\2\0019\4\28\0019\4\n\0045\6\29\0=\2\14\6=\3\15\0065\a\31\0005\b\30\0=\b\28\a=\a\27\6B\4\2\0015\4 \0006\5!\0\18\a\4\0B\5\2\4X\b\t�6\n\0\0'\f\2\0B\n\2\0028\n\t\n9\n\n\n5\f\"\0=\2\14\f=\3\15\fB\n\2\1E\b\3\3R\b�K\0\1\0K\0\1\0\1\0\0\vipairs\1\n\0\0\rtsserver\vclangd\ncssls\thtml\fpyright\vbashls\rdockerls\vyamlls\17intelephense\1\0\0\1\0\1\16diagnostics\2\1\0\0\15solargraph\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\1\0\0\16sumneko_lua\1\0\1\27automatic_installation\1\nsetup\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\0\14lspconfig\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\3\0\0\4\0\v\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\1K\0\1\0\1\0\3\ttext\b\vtexthl\23DiagnosticSignInfo\nnumhl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\3\ttext\b\vtexthl\23DiagnosticSignHint\nnumhl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\3\ttext\b\vtexthl\23DiagnosticSignWarn\nnumhl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\3\ttext\b\vtexthl\24DiagnosticSignError\nnumhl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\6\0\0\b\0&\00016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0004\5\0\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0005\6\t\0=\6\n\5=\5\v\0045\5\f\0004\6\0\0=\6\r\5=\5\14\0045\5\15\0004\6\0\0=\6\16\5=\5\17\0045\5\18\0004\6\0\0=\6\19\5=\5\20\0045\5\21\0=\5\22\0045\5\23\0005\6\24\0004\a\0\0=\a\25\6=\6\26\5=\5\27\0045\5\28\0=\5\29\0045\5\31\0005\6\30\0=\6 \0055\6\"\0005\a!\0=\a#\6=\6$\5=\5%\4B\2\2\1K\0\1\0\factions\14open_file\18window_picker\1\0\1\17quit_on_open\2\1\0\1\venable\1\15change_dir\1\0\0\1\0\1\vglobal\1\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\21hide_root_folder\1\vnumber\1\tside\tleft\nwidth\3\30\18adaptive_size\1\19relativenumber\1\15signcolumn\byes\bgit\1\0\3\venable\2\ftimeout\3�\3\vignore\2\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\1\15update_cwd\1\16diagnostics\nicons\1\0\4\tinfo\b\thint\b\fwarning\b\nerror\b\1\0\1\venable\2\rrenderer\1\0\1\27highlight_opened_files\ball\23ignore_ft_on_setup\1\0\6\15update_cwd\1\18hijack_cursor\1\18disable_netrw\2\17hijack_netrw\2\18open_on_setup\1\16open_on_tab\1\nsetup\14nvim-tree\frequire\npcall\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\14\0\0216\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0044\5\0\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4B\2\2\1K\0\1\0\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\21ensure_installed\1\0\0\1\r\0\0\tbash\blua\tdart\tjson\tyaml\vpython\bcpp\15typescript\bcss\tscss\thtml\truby\nsetup\28nvim-treesitter.configs\frequire\npcall\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\a\0\28\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\f\0005\6\v\0=\6\r\0055\6\14\0=\6\15\0055\6\16\0=\6\17\0055\6\18\0=\6\19\0055\6\20\0=\6\21\0055\6\22\0=\6\23\5=\5\24\0045\5\25\0=\5\26\4B\2\2\0019\2\27\1B\2\1\1K\0\1\0\tload\16diagnostics\1\0\3\vdarker\1\14undercurl\1\15background\2\15highlights\15TSOperator\1\0\1\afg\f$purple\20DashboardFooter\1\0\2\afg\n$cyan\vitalic\2\20DashboardCenter\1\0\1\afg\n$blue\20DashboardHeader\1\0\1\afg\v$green\22DashboardShortCut\1\0\1\afg\f$yellow\19NvimTreeNormal\1\0\0\1\0\1\abg\f#282A36\vcolors\1\0\1\bbg1\f#282A36\15code_style\1\0\5\fstrings\tnone\rkeywords\tnone\14variables\tnone\rcomments\vitalic\14functions\tnone\22toggle_style_list\1\3\0\0\tdeep\nlight\1\0\5\18ending_tildes\1\21toggle_style_key\15<leader>ct\nstyle\tdeep\16transparent\2\16term_colors\2\nsetup\fonedark\frequire\npcall\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-fugitive"] = {
    commands = { "Git", "GV", "G" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    commands = { "TestFile", "TestLast", "TestNearest", "TestSuite", "TestVisit" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/oscargl/.local/share/nvim/site/pack/packer/opt/vim-test",
    url = "https://github.com/vim-test/vim-test"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\t\0\0156\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\4B\2\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\v\0\0\thelp\rterminal\14dashboard\rstartify\rNvimTree\rmarkdown\ttext\vpacker\18lsp-installer\5\1\0\3\tchar\b▏\28show_first_indent_level\1#show_trailing_blankline_indent\1\nsetup\21indent_blankline\frequire\npcall\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\a\0\v\0\0176\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\t\0005\5\5\0005\6\4\0=\6\6\0055\6\a\0=\6\b\5=\5\n\4B\2\2\1K\0\1\0\fkeymaps\1\0\0\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\0\b\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\nsetup\rgitsigns\frequire\npcall\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\14\0\0216\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\5\0005\5\4\0=\5\6\0044\5\0\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4B\2\2\1K\0\1\0\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\21ensure_installed\1\0\0\1\r\0\0\tbash\blua\tdart\tjson\tyaml\vpython\bcpp\15typescript\bcss\tscss\thtml\truby\nsetup\28nvim-treesitter.configs\frequire\npcall\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\6\0\0\b\0&\00016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0004\5\0\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0005\6\t\0=\6\n\5=\5\v\0045\5\f\0004\6\0\0=\6\r\5=\5\14\0045\5\15\0004\6\0\0=\6\16\5=\5\17\0045\5\18\0004\6\0\0=\6\19\5=\5\20\0045\5\21\0=\5\22\0045\5\23\0005\6\24\0004\a\0\0=\a\25\6=\6\26\5=\5\27\0045\5\28\0=\5\29\0045\5\31\0005\6\30\0=\6 \0055\6\"\0005\a!\0=\a#\6=\6$\5=\5%\4B\2\2\1K\0\1\0\factions\14open_file\18window_picker\1\0\1\17quit_on_open\2\1\0\1\venable\1\15change_dir\1\0\0\1\0\1\vglobal\1\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\21hide_root_folder\1\vnumber\1\tside\tleft\nwidth\3\30\18adaptive_size\1\19relativenumber\1\15signcolumn\byes\bgit\1\0\3\venable\2\ftimeout\3�\3\vignore\2\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\venable\1\15update_cwd\1\16diagnostics\nicons\1\0\4\tinfo\b\thint\b\fwarning\b\nerror\b\1\0\1\venable\2\rrenderer\1\0\1\27highlight_opened_files\ball\23ignore_ft_on_setup\1\0\6\15update_cwd\1\18hijack_cursor\1\18disable_netrw\2\17hijack_netrw\2\18open_on_setup\1\16open_on_tab\1\nsetup\14nvim-tree\frequire\npcall\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\5\0005\3\6\0B\0\3\1K\0\1\0\1\2\0\0\fflutter\tdart\20filetype_extend\fluasnip\14lazy_load luasnip/loaders/from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\a\0\28\0#6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\f\0005\6\v\0=\6\r\0055\6\14\0=\6\15\0055\6\16\0=\6\17\0055\6\18\0=\6\19\0055\6\20\0=\6\21\0055\6\22\0=\6\23\5=\5\24\0045\5\25\0=\5\26\4B\2\2\0019\2\27\1B\2\1\1K\0\1\0\tload\16diagnostics\1\0\3\vdarker\1\14undercurl\1\15background\2\15highlights\15TSOperator\1\0\1\afg\f$purple\20DashboardFooter\1\0\2\afg\n$cyan\vitalic\2\20DashboardCenter\1\0\1\afg\n$blue\20DashboardHeader\1\0\1\afg\v$green\22DashboardShortCut\1\0\1\afg\f$yellow\19NvimTreeNormal\1\0\0\1\0\1\abg\f#282A36\vcolors\1\0\1\bbg1\f#282A36\15code_style\1\0\5\fstrings\tnone\rkeywords\tnone\14variables\tnone\rcomments\vitalic\14functions\tnone\22toggle_style_list\1\3\0\0\tdeep\nlight\1\0\5\18ending_tildes\1\21toggle_style_key\15<leader>ct\nstyle\tdeep\16transparent\2\16term_colors\2\nsetup\fonedark\frequire\npcall\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\3\0\0\4\0\v\0\0256\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\1K\0\1\0\1\0\3\ttext\b\vtexthl\23DiagnosticSignInfo\nnumhl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\3\ttext\b\vtexthl\23DiagnosticSignHint\nnumhl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\3\ttext\b\vtexthl\23DiagnosticSignWarn\nnumhl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\3\ttext\b\vtexthl\24DiagnosticSignError\nnumhl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\ns\0\3\n\1\b\0\17\15\0\2\0X\3\3�'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1�\tdesc\vbuffer\1\0\0\6n\bset\vkeymap\bvim\nLSP: s\0\3\n\1\b\0\17\15\0\2\0X\3\3�'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1�\tdesc\vbuffer\1\0\0\6x\bset\vkeymap\bvim\nLSP: d\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint�\r\1\2\n\0C\0�\0013\2\0\0003\3\1\0\18\4\2\0'\6\2\0'\a\3\0'\b\4\0B\4\4\1\18\4\2\0'\6\5\0'\a\6\0'\b\a\0B\4\4\1\18\4\3\0'\6\5\0'\a\b\0'\b\a\0B\4\4\1\18\4\2\0'\6\t\0'\a\n\0'\b\v\0B\4\4\1\18\4\2\0'\6\f\0'\a\r\0'\b\14\0B\4\4\1\18\4\2\0'\6\15\0'\a\16\0'\b\17\0B\4\4\1\18\4\2\0'\6\18\0'\a\19\0'\b\20\0B\4\4\1\18\4\2\0'\6\21\0006\a\22\0009\a\23\a9\a\24\a9\a\25\a'\b\26\0B\4\4\1\18\4\2\0'\6\27\0006\a\22\0009\a\23\a9\a\24\a9\a\28\a'\b\29\0B\4\4\1\18\4\2\0'\6\30\0006\a\31\0'\t \0B\a\2\0029\a!\aB\4\3\1\18\4\2\0'\6\"\0006\a\31\0'\t \0B\a\2\0029\a#\a'\b$\0B\4\4\1\18\4\2\0'\6%\0006\a\31\0'\t \0B\a\2\0029\a&\a'\b'\0B\4\4\1\18\4\2\0'\6(\0'\a)\0'\b*\0B\4\4\1\18\4\2\0'\6+\0'\a,\0'\b-\0B\4\4\1\18\4\2\0'\6.\0006\a\22\0009\a\23\a9\a\24\a9\a/\a'\b0\0B\4\4\1\18\4\2\0'\0061\0006\a\22\0009\a\23\a9\a\24\a9\a2\a'\b3\0B\4\4\1\18\4\2\0'\0064\0006\a\22\0009\a\23\a9\a\24\a9\a5\a'\b6\0B\4\4\1\18\4\2\0'\0067\0006\a\22\0009\a\23\a9\a\24\a9\a8\a'\b9\0B\4\4\1\18\4\2\0'\6:\0003\a;\0'\b<\0B\4\4\0016\4\22\0009\4=\0049\4>\4\18\6\1\0'\a?\0006\b\22\0009\b\23\b9\b\24\b9\b@\b\14\0\b\0X\t\4�6\b\22\0009\b\23\b9\b\24\b9\bA\b5\tB\0B\4\5\0012\0\0�K\0\1\0\1\0\1\tdesc#Format current buffer with LSP\15formatting\vformat\vFormat!nvim_buf_create_user_command\bapi\31[W]orkspace [L]ist Folders\0\15<leader>wl [W]orkspace [R]emove Folder\28remove_workspace_folder\15<leader>wr\29[W]orkspace [A]dd Folder\25add_workspace_folder\15<leader>wa\22Type [D]efinition\20type_definition\14<leader>D\25[G]oto [D]eclaration\16declaration\agD\28Signature Documentation$<cmd>Lspsaga signature_help<cr>\ags\24Hover Documentation\31<cmd>Lspsaga hover_doc<cr>\6K\26[W]orkspace [S]ymbols\"lsp_dynamic_workspace_symbols\15<leader>ws\25[D]ocument [S]ymbols\25lsp_document_symbols\15<leader>ds\19lsp_references\22telescope.builtin\frequire\agr\28[G]oto [I]mplementation\19implementation\agi\24[G]oto [D]efinition\15definition\bbuf\blsp\bvim\agd\14Scroll upF<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>\n<C-f>\16Scroll downE<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>\n<C-b>\25[C]ode [D]iagnostics+<cmd>Lspsaga show_line_diagnostics<cr>\15<leader>cd\r[Fi]nder <cmd>Lspsaga lsp_finder<cr>\15<leader>fi(:<c-u>Lspsaga range_code_action<cr>\18Code [A]ction!<cmd>Lspsaga code_action<cr>\14<leader>a\15[R]e[n]ame\28<cmd>Lspsaga rename<cr>\15<leader>rn\0\0�\5\1\0\r\0#\0G6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\2\15\0\0\0X\2\2�\14\0\1\0X\2\1�2\0;�3\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0036\5\6\0009\5\a\0059\5\b\0059\5\t\5B\5\1\0A\3\0\0029\4\n\0005\6\v\0B\4\2\0019\4\f\0019\4\n\0045\6\r\0=\2\14\6=\3\15\0065\a\25\0005\b\17\0005\t\16\0=\t\18\b5\t\20\0005\n\19\0=\n\21\t=\t\22\b5\t\23\0=\t\24\b=\b\26\a=\a\27\6B\4\2\0019\4\28\0019\4\n\0045\6\29\0=\2\14\6=\3\15\0065\a\31\0005\b\30\0=\b\28\a=\a\27\6B\4\2\0015\4 \0006\5!\0\18\a\4\0B\5\2\4X\b\t�6\n\0\0'\f\2\0B\n\2\0028\n\t\n9\n\n\n5\f\"\0=\2\14\f=\3\15\fB\n\2\1E\b\3\3R\b�K\0\1\0K\0\1\0\1\0\0\vipairs\1\n\0\0\rtsserver\vclangd\ncssls\thtml\fpyright\vbashls\rdockerls\vyamlls\17intelephense\1\0\0\1\0\1\16diagnostics\2\1\0\0\15solargraph\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\17capabilities\14on_attach\1\0\0\16sumneko_lua\1\0\1\27automatic_installation\1\nsetup\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\0\14lspconfig\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\n\1\0\f\0009\0q6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�2\0i�6\2\1\0'\4\3\0B\2\2\0029\3\4\2B\3\1\0019\3\5\0015\5\t\0005\6\a\0003\a\6\0=\a\b\6=\6\n\0055\6\14\0009\a\v\0019\a\f\a9\a\r\aB\a\1\2=\a\15\0069\a\v\0019\a\f\a9\a\r\aB\a\1\2=\a\16\6=\6\f\0059\6\17\0019\6\18\0069\6\19\0065\b\21\0009\t\17\0019\t\20\t)\v��B\t\2\2=\t\22\b9\t\17\0019\t\20\t)\v\4\0B\t\2\2=\t\23\b9\t\17\0019\t\24\tB\t\1\2=\t\25\b9\t\17\0019\t\26\tB\t\1\2=\t\27\b9\t\17\0019\t\28\t5\v\29\0B\t\2\2=\t\30\bB\6\2\2=\6\17\0059\6\v\0019\6\31\0064\b\b\0005\t \0>\t\1\b5\t!\0>\t\2\b5\t\"\0>\t\3\b5\t#\0>\t\4\b5\t$\0>\t\5\b5\t%\0>\t\6\b5\t&\0>\t\a\b4\t\3\0005\n'\0>\n\1\tB\6\3\2=\6\31\0055\6.\0009\a(\0025\t)\0005\n*\0=\n+\t5\n,\0=\n-\tB\a\2\2=\a/\6=\0060\0055\0061\0=\0062\5B\3\2\0019\3\5\0019\0033\3'\0054\0005\0068\0009\a\v\0019\a\31\a4\t\3\0005\n5\0>\n\1\t5\n6\0>\n\2\t4\n\3\0005\v7\0>\v\1\nB\a\3\2=\a\31\6B\3\3\1K\0\1\0K\0\1\0\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\bgit\14gitcommit\rfiletype\17experimental\1\0\2\15ghost_text\2\16native_menu\1\15formatting\vformat\1\0\0\tmenu\1\0\5\fluasnip\n[SNP]\rnvim_lua\n[API]\tpath\n[PTH]\rnvim_lsp\n[LSP]\vbuffer\n[BUF]\15symbol_map\1\0\25\nValue\t \rConstant\t \18TypeParameter\t \14Reference\t \rOperator\t \tText\t \fKeyword\t \vFolder\t \vMethod\t \fSnippet\t \15EnumMember\t \rFunction\t \tEnum\t \16Constructor\t \nEvent\t \vStruct\t \nColor\t \tFile\t \nField\t \rVariable\t \nClass\t \14Interface\t \vModule\t \rProperty\t \tUnit\t \1\0\2\tmode\16symbol_text\rmaxwidth\0032\15cmp_format\1\0\1\tname\vbuffer\1\0\2\19keyword_length\3\5\tname\vbuffer\1\0\1\tname\nemoji\1\0\1\tname\tcalc\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\tinit\flspkind\bcmp\frequire\npcall\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\a\0\v\0\0216\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0009\2\3\0015\4\t\0004\5\3\0009\6\4\0019\6\5\0069\6\6\6>\6\1\0059\6\4\0019\6\a\0069\6\b\6>\6\2\5=\5\n\4B\2\2\1K\0\1\0\fsources\1\0\0\vflake8\16diagnostics\nblack\15formatting\rbuiltins\nsetup\fnull-ls\frequire\npcall\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: cmp-git
time([[Config for cmp-git]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fcmp_git\frequire\0", "config", "cmp-git")
time([[Config for cmp-git]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n�\f\0\0\4\0\v\0\0226\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1�K\0\1\0005\2\4\0=\2\3\0014\2\6\0005\3\6\0>\3\1\0025\3\a\0>\3\2\0025\3\b\0>\3\3\0025\3\t\0>\3\4\0025\3\n\0>\3\5\2=\2\5\1K\0\1\0\1\0\4\ticon\n  \tdesc-New File                                \rshortcut\fSPC x x\vaction\21DashboardNewFile\1\0\4\ticon\n  \tdesc-Open Config                             \rshortcut\fSPC x x\vaction;new | wincmd j | q | cd ~/.config/nvim/ | e ./init.lua\1\0\4\ticon\n  \tdesc-Find  word                              \rshortcut\fSPC f g\vaction\24Telescope live_grep\1\0\4\ticon\n  \tdesc-Recently opened files                   \rshortcut\fSPC x x\vaction\23Telescope oldfiles\1\0\4\ticon\n  \tdesc-Find  File                              \rshortcut\fSPC f f\vaction:Telescope find_files find_command=rg,--hidden,--files\18custom_center\1\r\0\0\5\5\5�\1 ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗�\1 ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║�\1 ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║�\1 ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║�\1 ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║�\1 ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝\5\5\5\18custom_header\14dashboard\frequire\npcall\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Conditional loads
time([[Conditional loading of telescope-fzf-native.nvim]], true)
  require("packer.load")({"telescope-fzf-native.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of telescope-fzf-native.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestLast lua require("packer.load")({'vim-test'}, { cmd = "TestLast", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestNearest lua require("packer.load")({'vim-test'}, { cmd = "TestNearest", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestSuite lua require("packer.load")({'vim-test'}, { cmd = "TestSuite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestVisit lua require("packer.load")({'vim-test'}, { cmd = "TestVisit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GV lua require("packer.load")({'vim-fugitive'}, { cmd = "GV", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TestFile lua require("packer.load")({'vim-test'}, { cmd = "TestFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'cmp-emoji', 'cmp-calc'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType dart ++once lua require("packer.load")({'flutter-tools.nvim'}, { ft = "dart" }, _G.packer_plugins)]]
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
