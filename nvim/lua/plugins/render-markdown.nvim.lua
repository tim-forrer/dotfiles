return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		enabled = true,
		completions = { blink = { enabled = true } },
		latex = { enabled = true },
		preset = "obsidian",
		checkbox = {
			checked = {
				scope_highlight = "@markup.strikethrough",
			},
			custom = {
				abandoned = {
					raw = "[-]",
					rendered = "󰍵",
					highlight = "NonText",
					scope_highlight = "NonText",
				},
			},
		},
	},
}
