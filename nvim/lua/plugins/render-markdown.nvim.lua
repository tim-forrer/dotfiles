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
			custom = {
				todo = { raw = "[-]", rendered = "󰥔", highlight = "RenderMarkdownTodo", scope_highlight = nil },
			},
		},
	},
}
