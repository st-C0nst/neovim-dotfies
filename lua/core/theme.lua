local M = {}

M.current = "edge"

function M.load()
  vim.cmd.colorscheme(M.current)
end

return M
