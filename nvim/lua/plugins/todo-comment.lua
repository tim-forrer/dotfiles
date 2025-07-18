return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
	keys = {
		{
			"<space>pt",
			function()
				Snacks.picker.todo_comments()
			end,
			desc = "Pick from TODO, BUG, etc. comments",
		},
	},
}
