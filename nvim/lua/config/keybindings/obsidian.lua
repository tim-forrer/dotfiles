return {
	{
		"<space>on",
		function()
			local input_opts = {
				prompt = "Enter new note title",
			}
			local input_fn = function(input)
				if input == nil then
					return
				elseif input ~= "" then
					input = " " .. input
				end
				vim.cmd("Obsidian new" .. input)
			end
			vim.ui.input(input_opts, input_fn)
		end,
		desc = "Create a new Obsidian note",
	},
	{
		"<space>os",
		function()
			vim.cmd("Obsidian search")
		end,
		desc = "Search vault for file",
	},
	{
		"<space>ot",
		function()
			vim.cmd("Obsidian today")
		end,
		desc = "Open today's daily note",
	},
	{
		"<space>od",
		function()
			vim.cmd("Obsidian dailies")
		end,
		desc = "Pick from all daily notes",
	},
}
