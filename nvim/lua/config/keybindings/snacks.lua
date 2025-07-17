return {
	{
		"<space>lg",
		function()
			Snacks.lazygit.open()
		end,
		desc = "Open Lazygit",
	},
	{
		"<space>pc",
		function()
			Snacks.picker.command()
		end,
		desc = "Pick from commands",
	},
	{
		"<space>d",
		function()
			Snacks.picker.diagnostics()
		end,
		desc = "Pick from diagnostics",
	},
	{
		"<space>e",
		function()
			Snacks.picker.explorer()
		end,
		desc = "Open file explorer",
	},
	{
		"<space>f",
		function()
			Snacks.picker.files()
		end,
		desc = "Pick from files",
	},
	{
		"<space>/",
		function()
			Snacks.picker.grep()
		end,
		desc = "Grep within files",
	},
	{
		"<space>k",
		function()
			Snacks.picker.keymaps()
		end,
		desc = "Pick from keymaps",
	},
	{
		"<space>gb",
		function()
			Snacks.picker.git_branches()
		end,
		desc = "Pick from git branches",
	},
	{
		"<space>pp",
		function()
			Snacks.picker.pickers()
		end,
		desc = "Pick from pickers",
	},
}
