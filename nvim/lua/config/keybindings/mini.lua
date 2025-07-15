return {
	{
		"\\e",
		function()
			MiniFiles.open()
		end,
		desc = "Open MiniFile explorer",
	},
	{
		"<leader>pf",
		function()
			MiniPick.builtin.files()
		end,
		desc = "Pick from files",
	},
	{
		"<leader>/",
		function()
			MiniPick.builtin.grep_live()
		end,
		desc = "Live grep from files",
	},
	{
		"<leader>pd",
		function()
			MiniExtra.pickers.diagnostic()
		end,
		desc = "Pick from diagnostics",
	},
	{
		"<leader>pb",
		function()
			MiniExtra.pickers.git_branches()
		end,
		desc = "Pick from diagnostics",
	},
}
