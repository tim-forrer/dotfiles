local M = {}

M.keys = {
	{
		"<leader>lg",
		function()
			Snacks.lazygit.open()
		end,
		desc = "Open Lazygit",
	},
}

return M
