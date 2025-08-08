require("options")
require("plugins")
require("keymaps")

vim.lsp.enable({"lua_ls", "ruff"})
vim.diagnostic.config({
	signs = true,
	float = {
		width = 50,
	},
})

