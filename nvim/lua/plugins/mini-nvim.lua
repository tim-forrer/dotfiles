local configure_mini = function()
	local mini_config = require("mini_config")
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
	keys = require("config.keybindings.mini"),
}
