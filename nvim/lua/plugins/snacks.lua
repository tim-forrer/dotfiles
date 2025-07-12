-- lazy.nvim
return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		picker = { enabled = true },
		image = {
			doc = { enabled = true, inline = false, max_width = 20, max_height = 20 },
			math = { enabled = false },
		},
		indent = { enabled = true },
		lazygit = { enabled = true },
		input = { enabled = true },
	},
	lazy = false,
	priority = 1000,
	keys = {
		{
			"<leader><space>",
			function()
				Snacks.picker.smart()
			end,
			desc = "Smart find files",
		},
		{
			"<leader>/",
			function()
				Snacks.picker.grep()
			end,
			desc = "Find in files with grep",
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
			desc = "Find from recent files",
		},
		{
			"<leader>sk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "Find from keymaps",
		},
		{
			"<leader>lg",
			function()
				Snacks.lazygit()
			end,
			desc = "Open Lazygit",
		},
	},
}
