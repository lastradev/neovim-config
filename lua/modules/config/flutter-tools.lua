return function()
  local present, ftools = pcall(require, "flutter-tools")
  if not present then
      return
  end

  ftools.setup {
    debugger = { -- integrate with nvim dap + install dart code debugger
      enabled = true
    }
  }
end
