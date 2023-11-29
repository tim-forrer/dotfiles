local M = {}
M.lazy_config = { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
M.load = function()
  require("nvim-treesitter.configs").setup({
    highlight = {
      disable = { "latex" },
    },
  })
end
return M
