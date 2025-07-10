-- lazy.nvim
return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		picker = { enabled = true },
		image = { enabled = true },
		indent = { enabled = true },
	},
	lazy = false,
	priority = 1000,
	keys = {
		{
			"<leader><space>",
			function()
				Snacks.picker.smart()
			end,
			desc = "Find files",
		},
		{
			"<leader>/",
			function()
				Snacks.picker.grep()
			end,
			desc = "Find files",
		},
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find files",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.recent()
			end,
			desc = "Recent",
		},
		{
			"<leader>sk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Recent",
		},
	},
}
