local configure_mini = function()
	local mini_config = require("mini_nvim")
	for _, module in ipairs(mini_config.module_list) do
		local opts = {}
		if mini_config[module] ~= nil then
			opts = mini_config[module]
		end
		require("mini." .. module).setup(opts)
	end
end

return {
	"echasnovski/mini.nvim",
	version = false,
	lazy = false,
	config = configure_mini,
	keys = {
		{
			"<leader>mf",
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
	},
}
