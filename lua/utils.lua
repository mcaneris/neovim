local M = {}

M.wk_register = function(options)
  local present, wk = pcall(require, "which-key")

  if not present then
    return
  end

  wk.register(options)
end

return M
