return {
	-- {
	--   "<space>e",
	--   function()
	--     MiniFiles.open()
	--   end,
	--   desc = "Open MiniFile explorer",
	-- },
	-- {
	--   "<space>f",
	--   function()
	--     MiniPick.builtin.files()
	--   end,
	--   desc = "Pick from files",
	-- },
	-- {
	--   "<space>/",
	--   function()
	--     MiniPick.builtin.grep_live()
	--   end,
	--   desc = "Live grep from files",
	-- },
	-- {
	--   "<space>d",
	--   function()
	--     MiniExtra.pickers.diagnostic()
	--   end,
	--   desc = "Pick from diagnostics",
	-- },
	-- {
	--   "<space>gb",
	--   function()
	--     MiniExtra.pickers.git_branches()
	--   end,
	--   desc = "Pick from git branches",
	-- },
	-- {
	--   "<space>gf",
	--   function()
	--     MiniExtra.pickers.git_files()
	--   end,
	--   desc = "Pick from files tracked by git",
	-- },
	-- {
	--   "<space>k",
	--   function()
	--     MiniExtra.pickers.keymaps()
	--   end,
	--   desc = "Pick from keymaps",
	-- },
	-- {
	--   "<space>r",
	--   function()
	--     MiniExtra.pickers.lsp({ scope = "references" })
	--   end,
	--   desc = "Pick from all references to the symbol under the cursor",
	-- },
	{
		"<space>x",
		function()
			MiniBufremove.delete()
		end,
		desc = "Delete the current buffer",
	},
}
