return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"Saghen/blink.cmp",
		"folke/snacks.nvim",
		"nvim-treesitter/nvim-treesitter",
		"MeanderingProgrammer/render-markdown.nvim",
	},
	---@module 'obsidian'
	---@type obsidian.config
	opts = {
		workspaces = {
			{
				name = "the-forrerst",
				path = "~/the-forrerst",
			},
		},
		notes_subdir = "notes",
		log_level = vim.log.levels.INFO,

		daily_notes = {
			folder = "Journal",
			date_format = "%Y-%m-%d",
			alias_format = "%B %-d, %Y",
		},

		completion = {
			blink = true,
			min_chars = 2,
			create_new = true,
		},

		new_notes_location = "notes_subdir",

		-- Optional, customize how note IDs are generated given an optional title.
		---@param title string|?
		---@return string
		note_id_func = function(title)
			-- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
			-- In this case a note with the title 'My new note' will be given an ID that looks
			-- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'.
			-- You may have as many periods in the note ID as you'd like—the ".md" will be added automatically
			local suffix = ""
			if title ~= nil then
				-- If title is given, transform it into valid file name.
				suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
			else
				-- If title is nil, just add 4 random uppercase letters to the suffix.
				for _ = 1, 4 do
					suffix = suffix .. string.char(math.random(65, 90))
				end
			end
			return tostring(os.time()) .. "-" .. suffix
		end,
		wiki_link_func = "prepend*note_id",
		-- Either 'wiki' or 'markdown'.
		preferred_link_style = "wiki",
		-- Optional, boolean or a function that takes a filename and returns a boolean.
		-- `true` indicates that you don't want obsidian.nvim to manage frontmatter.
		disable_frontmatter = false,

		picker = {
			-- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', 'mini.pick' or 'snacks.pick'.
			name = "snacks.pick",
		},
		sort_by = "modified",
		sort_reversed = true,

		ui = {
			enable = false,
		},
		---@class obsidian.config.FooterOpts
		---
		---@field enabled? boolean
		---@field format? string
		---@field hl_group? string
		---@field separator? string|false Set false to disable separator; set an empty string to insert a blank line separator.
		footer = {
			enabled = true,
			format = "{{backlinks}} backlinks  {{properties}} properties  {{words}} words",
			hl_group = "Comment",
			separator = string.rep("-", 80),
		},
	},
}
