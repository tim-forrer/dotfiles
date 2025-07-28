local M = {}

M.module_list = {
	"image",
	"indent",
	"input",
	"lazygit",
	"pick",
	"picker",
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

M.opts.explorer = { replace_netrw = true }

M.opts.picker = { sources = {} }
M.opts.picker.sources.explorer = {
	cmd = "rg",
	layout = { preset = "default", preview = true },
}
M.opts.picker.sources.keymaps = {
	layout = { preview = false },
}

for _, module_name in ipairs(M.module_list) do
	if M.opts[module_name] == nil then
		M.opts[module_name] = { enabled = true }
	end
end

return M
