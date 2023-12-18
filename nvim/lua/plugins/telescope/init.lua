local M = {}
M.lazy_config = {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "BurntSushi/ripgrep",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
}

M.load = function()
  require("telescope").load_extension("fzf")
end

return M
