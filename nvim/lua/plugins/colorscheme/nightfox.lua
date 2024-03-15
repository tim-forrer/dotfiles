local M = {}

M.lazy_config = {
  "EdenEast/nightfox.nvim",
  name = "nightfox",
  priority = 1000,
}

M.load = function ()
  require("nightfox").setup({
  })
  vim.cmd.colorscheme("dawnfox")
end

return M
