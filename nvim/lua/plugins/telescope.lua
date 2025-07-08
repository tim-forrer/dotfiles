return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	version = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
		{ "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Search Project" },
	},
	opts = {
		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = "smart_case",
			},
		},
	},
}
