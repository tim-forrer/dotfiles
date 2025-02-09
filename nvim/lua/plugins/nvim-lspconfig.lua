return {
  "neovim/nvim-lspconfig",
  lazy = false,
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    require("mason-lspconfig").setup_handlers({
      -- Default handler for all servers
      function(server_name)
        lspconfig[server_name].setup({})
      end,
    })
  end,
}
