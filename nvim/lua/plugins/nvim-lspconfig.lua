return {
  "neovim/nvim-lspconfig",
  lazy = false,
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_nvim_lsp.default_capabilities()

    require("mason-lspconfig").setup_handlers({
      -- Default handler for all servers
      function(server_name)
        lspconfig[server_name].setup({})
      end,
    })

    lspconfig.pyright.setup({
      capabilities = capabilities,
      settings = {
        python = {
          analysis = {
            autoSearchPaths = true,
            useLibraryCodeForTypes = true,
          },
        },
      },
    })

    -- Configure Lua Language Server (`lua_ls`) to recognize `vim` global
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }, -- Allow `vim` global to prevent warnings
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true), -- Make LSP aware of Neovim runtime
            checkThirdParty = false, -- Disable third-party checks if unnecessary
          },
          telemetry = { enable = false }, -- Disable telemetry
        },
      },
    })
  end,
}
