local M = {}
M.lazy_config = {
  "lervag/vimtex",
  lazy = false,
}
M.load = function()
  vim.g.vimtex_view_method = "skim" -- on MacOS
  -- vim.g.vimtex_view_method = "zathura" -- on Linux
  vim.g.vimtex_quickfix_open_on_warning = 0
end
return M
