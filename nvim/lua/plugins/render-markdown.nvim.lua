return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- if you use standalone mini plugins
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		enabled = true,
		completions = { blink = { enabled = true } },
		latex = { enabled = false },
		preset = "obsidian",
	},
}
