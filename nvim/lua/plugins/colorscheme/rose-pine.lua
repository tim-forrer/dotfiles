local M = {}

M.lazy_config = {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
}

M.load = function ()
  require("rose-pine").setup({
    variant = "dawn",
    dim_inactive_windows = true,
  })
  vim.cmd.colorscheme("rose-pine")
end

return M
