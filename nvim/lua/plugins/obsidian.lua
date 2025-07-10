return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		-- Optional.
		"saghen/blink.cmp",
		"nvim-telescope/telescope.nvim",
		"folke/snacks.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	---@module 'obsidian'
	---@type obsidian.config
	opts = {
		workspaces = {
			{
				name = "the-forrerst",
				path = "~/the-forrerst",
			},
		},
	},
}
