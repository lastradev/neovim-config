return function()
    local present, ts_config = pcall(require, "nvim-treesitter.configs")
    if not present then
        return
    end

    ts_config.setup {
        ensure_installed = {
           "bash",
           "lua",
           "dart",
           "json",
           "yaml",
           "python",
           "cpp"
        },
        highlight = {
            enable = true,
            use_languagetree = true
        },
        indent = {
            enable = true
        }
    }
end
