return function()
  local present, dap = pcall(require, "dap")
  if not present then
      return
  end

  -- C, C++
  dap.adapters.cppdbg = {
    type = 'executable',
    command = '/development/cpptools/extension/debugAdapters/OpenDebugAD7',
  }

  dap.configurations.cpp = {
    {
      name = "Launch file",
      type = "cppdbg",
      request = "launch",
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = '${workspaceFolder}',
      stopOnEntry = true,
    },
    {
      name = 'Attach to gdbserver :1234',
      type = 'cppdbg',
      request = 'launch',
      MIMode = 'gdb',
      miDebuggerServerAddress = 'localhost:1234',
      miDebuggerPath = '/usr/bin/gdb',
      cwd = '${workspaceFolder}',
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
    },
  }

  -- DART
  dap.adapters.dart = {
    type = "executable",
    command = "node",
    args = {"/development/Dart-Code/out/dist/debug.js", "flutter"}
  }
  dap.configurations.dart = {
    {
      type = "dart",
      request = "launch",
      name = "Launch flutter",
      dartSdkPath = "/development/flutter/bin/cache/dart-sdk/",
      flutterSdkPath = "/development/flutter",
      program = "${workspaceFolder}/lib/main.dart",
      cwd = "${workspaceFolder}",
    }
  }

  dap.configurations.c = dap.configurations.cpp
  vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
  vim.fn.sign_define('DapStopped', {text='', texthl='', linehl='', numhl=''})
end
