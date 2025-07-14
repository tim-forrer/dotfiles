-- lazy.nvim
return {
	"folke/snacks.nvim",
	---@type snacks.Config
	opts = {
		picker = { enabled = true },
		image = {
			doc = {
				enabled = true,
				inline = false,
				float = true,
				max_width = 80,
				max_height = 40,
				-- Set to `true`, to conceal the image text when rendering inline.
				-- (experimental)
				---@param lang string tree-sitter language
				---@param type snacks.image.Type image type
				conceal = function(lang, type)
					-- only conceal math expressions
					return type == "math"
				end,
			},
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
