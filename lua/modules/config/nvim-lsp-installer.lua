return function()
  local present, lsp_installer = pcall(require, "nvim-lsp-installer")
  if not present then
      return
  end

  lsp_installer.settings {
    install_root_dir = "/development/lsp_servers",
  }

  -- Register a handler that will be called for all installed servers.
  -- Alternatively, you may also register handlers on specific server instances instead (see example below).
  lsp_installer.on_server_ready(function(server)
      local opts = {}

      -- (optional) Customize the options passed to the server
      if server.name == "sumneko_lua" then
        opts.settings = {
          Lua = {
              diagnostics = {
                  globals = { 'vim' }
            }
          }
        }
      end

      -- This setup() function is exactly the same as lspconfig's setup function.
      -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/ADVANCED_README.md
      server:setup(opts)
  end)
end
