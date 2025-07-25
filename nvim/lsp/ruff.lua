vim.lsp.config.ruff = {
	cmd = { "ruff", "server" },
	filetypes = { "python" },
	root_markers = {
		".git",
		"pyproject.toml",
		"requirements.txt",
		"ruff.toml",
		".ruff.toml",
	},
	single_file_support = true,
	settings = {},
}
