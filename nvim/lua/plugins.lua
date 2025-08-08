vim.pack.add({
	"https://github.com/f-person/auto-dark-mode.nvim",
	"https://github.com/EdenEast/nightfox.nvim",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/benomahony/uv.nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/folke/which-key.nvim",
	"https://github.com/folke/snacks.nvim",
	"https://github.com/echasnovski/mini.nvim",
  "https://github.com/neovim/nvim-lspconfig",
})

require("mini.ai").setup()
require("mini.bufremove").setup()
require("mini.icons").setup()
require("mini.statusline").setup()
require("mini.files").setup()
require("mini.surround").setup()
require("mini.tabline").setup()
require("mason").setup()
require("auto-dark-mode").setup(
	{
		set_dark_mode = function()
			vim.api.nvim_set_option_value("background", "dark", {})
			vim.cmd("colorscheme nordfox")
		end,
		set_light_mode = function()
			vim.api.nvim_set_option_value("background", "light", {})
			vim.cmd("colorscheme dayfox")
		end,
		update_interval = 3000,
		fallback = "dark",
	}
)
require("snacks").setup({
  picker = { enabled = true},
  statuscolumn = { enabled = true},
  image = {
    math = { enabled = false},
  },
  lazygit = { enabled = true},
  indent = {enabled = true},
  input = { enabled = true},
})
