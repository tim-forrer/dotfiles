local configure_mini = function()
	local mini_config = require("mini_nvim")
	for _, module in ipairs(mini_config.module_list) do
		if mini_config[module] ~= nil then
			require("mini." .. module).setup(mini_config[module])
		else
			require("mini." .. module).setup()
		end
	end
	vim.cmd("color minisummer")
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
