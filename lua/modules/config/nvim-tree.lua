return function()
  local present, nvim_tree = pcall(require, "nvim-tree")
  if not present then
      return
  end

  local g = vim.g
  g.nvim_tree_quit_on_open = 1 -- 0 by default, closes the tree when you open a file
  g.nvim_tree_highlight_opened_files = 1 -- 0 by default, will enable folder and file icon highlight for opened files/directories.
  --g.nvim_tree_disable_window_picker = 1 -- buggy option

  nvim_tree.setup{
    -- open the tree when running this setup function
    open_on_setup       = true,
    -- will not open on setup if the filetype is in this list
    ignore_ft_on_setup  = {'startify', 'dashboard'},
    -- closes neovim automatically when the tree is the last **WINDOW** in the view
    auto_close          = false,
    -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
    update_cwd          = true,
    -- show lsp diagnostics in the signcolumn
    diagnostics = {
      enable = true,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    },
    -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
    update_focused_file = {
      -- enables the feature
      enable      = true,
      -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
      -- only relevant when `update_focused_file.enable` is true
      update_cwd  = false,
      -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
      -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
      ignore_list = {}
    },
    -- configuration options for the system open command (`s` in the tree by default)
    system_open = {
      -- the command to run this, leaving nil should work in most cases
      cmd  = nil,
      -- the command arguments as a list
      args = {}
    },
    filters = {
      custom = {
        '.git',
        'node_modules',
        '.cache',
      }
    }
  }
end
