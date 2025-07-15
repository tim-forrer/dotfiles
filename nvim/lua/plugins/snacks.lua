-- lazy.nvim
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
}
