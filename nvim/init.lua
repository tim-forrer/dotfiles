require("options")
require("plugins")
require("keymaps")

local pyright_opts = {
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        ignore = {"*"}
      },
    },
  },
}

vim.lsp.config("pyright", pyright_opts)

vim.lsp.enable({"lua_ls", "ruff", "pyright", "rust-analyzer", "tailwindcss"})
vim.diagnostic.config({
	signs = true,
	float = {
		width = 50,
	},
})

