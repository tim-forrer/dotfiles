local opts = {}
opts.preset = "helix"
opts.delay = 100

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = opts,
}
