local snacks_config = require("snacks_config")

return {
	"folke/snacks.nvim",
	opts = snacks_config.opts,
	lazy = false,
	priority = 1000,
	keys = require("config.keybindings.snacks"),
}
