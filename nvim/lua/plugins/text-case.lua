local M = {}
M.lazy_config = {
  "johmsalas/text-case.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  lazy = false, -- required for using the default keymaps
  config = function()
    require("telescope").load_extension("textcase")
  end,
  keys = {
    {
      "ga.",
      "<cmd>TextCaseOpenTelescope<CR>",
      mode = { "n", "v" },
      desc = "Telescope",
    },
  },
}

M.load = function()
  require("textcase").setup({})
end

return M
