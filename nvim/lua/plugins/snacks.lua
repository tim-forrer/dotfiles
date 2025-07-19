local snacks_config = require("snacks_config")

return {
	"folke/snacks.nvim",
	config = function()
		local snacks = require("snacks")
		snacks.setup(snacks_config.opts)
	end,
	lazy = false,
	priority = 1000,
	keys = require("config.keybindings.snacks"),
}
