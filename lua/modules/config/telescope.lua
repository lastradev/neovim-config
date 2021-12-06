return function()
  local present, telescope = pcall(require, "telescope")
  if not present then
    return
  end

  telescope.setup({
      defaults = {
        layout_config = {
          width = 0.95,
          height = 0.85,
          horizontal = {
            preview_width = function(_, cols, _)
              if cols > 200 then
                return math.floor(cols * 0.4)
              else
                return math.floor(cols * 0.6)
              end
            end,
          },
          flex = {
            horizontal = {
              preview_width = 0.9,
            },
          },
        }
      },
    })
end

