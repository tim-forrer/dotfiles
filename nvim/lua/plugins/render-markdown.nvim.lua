return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
	lazy = true,
	filetype = { "markdown" },
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		completions = {
			blink = { enabled = true },
		},
		render_modes = true,
		latex = { enabled = false },
		preset = "none",
		heading = { sign = false },
		bullet = {
			icons = { "", "", "󰨓", "󰨔" },
		},
		checkbox = {
			right_pad = 1,
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
