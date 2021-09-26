return function()
  local present, indent_blankline = pcall(require, "indent_blankline")
  if not present then
      return
  end


  indent_blankline.setup {
    char = "▏",
    filetype_exclude = {"help", "terminal", "dashboard", "startify", "NvimTree"},
    buftype_exclude = {"terminal"},
    show_trailing_blankline_indent = 0,
    show_first_indent_level = 0
  }
end
