local servers = {
  "lua_ls",
  "hls",
  "pyright",
  "texlab",
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
}

local M = {}

M.lazy_config = {
  "williamboman/mason.nvim",
  dependencies = {
    { "williamboman/mason-lspconfig.nvim" },
  },
}

local load_lsps = function()
  for _, server in pairs(servers) do
    local opts = {
      on_attach = require("plugins.lsp.handlers").on_attach,
      capabilities = require("plugins.lsp.handlers").capabilities,
    }

    server = vim.split(server, "@")[1]

    local require_ok, conf_opts =
      pcall(require, "plugins.lsp.settings." .. server)
    if require_ok then
      print(server .. " require_ok")
      opts = vim.tbl_deep_extend("force", conf_opts, opts)
    end
    require("lspconfig")[server].setup(opts)
  end
end

M.load = function()
  require("mason").setup(settings)
  require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_installation = true,
  })
  load_lsps()
end

return M
