local M = {}

M.module_list = {
	"image",
	"lazygit",
	"indent",
	"input",
	"pick",
}

M.opts = {}
M.opts.image = {
	math = { enabled = false },
	doc = {
		enabled = true,
		float = true,
		inline = false,
		max_width = 40,
		max_height = 40,
	},
}
for _, module_name in ipairs(M.module_list) do
	if M.opts[module_name] == nil then
		M.opts[module_name] = { enabled = true }
	end
end

return M
