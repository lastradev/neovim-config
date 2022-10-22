return function ()
  local present, db = pcall(require, "dashboard")
  if not present then
    return
  end

  -- local home = os.getenv('HOME')
  -- db.preview_command = 'cat | lolcat -F 0.3'
  -- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
  -- db.preview_file_height = 9
  -- db.preview_file_width = 54
  db.custom_header = {
    "",
    "",
    "",
    " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
    " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
    " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
    " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
    " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
    " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
    "",
    "",
    "",
  }
  db.custom_center = {
    {icon = '  ', desc = 'Find  File                              ', action = 'Telescope find_files', shortcut = 'SPC f f'},
    {icon = '  ', desc = 'Light Mode                              ', action = 'Catppuccin latte', shortcut = 'SPC x x'},
    {icon = '  ', desc = 'Find  word                              ', action = 'Telescope live_grep', shortcut = 'SPC f g'},
    {icon = '  ', desc = 'Open Config                             ', action = 'cd ~/.config/nvim/ | e ./init.lua', shortcut = 'SPC x x' },
    {icon = '  ', desc = 'New File                                ', action = 'DashboardNewFile', shortcut = 'SPC x x'},
  }
end

