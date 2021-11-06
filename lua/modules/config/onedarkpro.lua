return function()
  local present, onedarkpro = pcall(require, "onedarkpro")
  if not present then
      return
  end

  onedarkpro.setup({
    options = {
      transparency = true, -- Use a transparent background?
    }
  })
  onedarkpro.load()
end
