local snacks_config = require("snacks_config")

return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		picker = { enabled = false },
		image = {
			doc = {
				enabled = true,
				inline = false,
				float = true,
				max_width = 80,
				max_height = 40,
			},
			math = { enabled = false },
		},
		indent = { enabled = true },
		lazygit = { enabled = true },
		input = { enabled = true },
	},
	lazy = false,
	priority = 1000,
	keys = snacks_config.keys,
}
