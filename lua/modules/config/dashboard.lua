return function()
  local g = vim.g
  g.dashboard_default_executive = 'fzf'
  g.dashboard_footer_icon = '🐬 '
  g.dashboard_disable_statusline = 1
  g.dashboard_custom_section = {
    find_files = {
      description = { '  Find files                          SPC p s ' },
      command = 'Files',
    },
    find_history = {
      description = { '  Recently opened files               SPC x x' },
      command = 'History',
    },
    find_word = {
      description = { '  Find  word                          SPC f s' },
      command = 'Ag',
    },
    open_config = {
      description = { '  Open Config                         SPC x x' },
      command = 'new | wincmd j | q | cd ~/.config/nvim/ | e ./init.lua',
    },
    change_colorscheme = {
      description = { '  Change colorscheme                  SPC x x' },
      command = 'Colors',
    },
    new_file = {
      description = { '  New file                            SPC x x' },
      command = 'new | wincmd j | q',
    },
  }

  g.dashboard_custom_header = {
    '',
    '',
    '',
    ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
    ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
    ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
    ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
    ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
    ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
    '',
  }
end
