---@param title string|?
---@return string
local generate_note_id = function(title)
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
end

local generate_note_frontmatter = function(note)
	local out = { aliases = note.aliases, tags = note.tags }

	if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
		for k, v in pairs(note.metadata) do
			out[k] = v
		end
	end
	return out
end

return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		"Saghen/blink.cmp",
		"echasnovski/mini.nvim",
		"nvim-treesitter/nvim-treesitter",
		"MeanderingProgrammer/render-markdown.nvim",
	},

	opts = {
		log_level = vim.log.levels.INFO,
		legacy_commands = false,

		dir = "~/the-forrerst/",
		notes_subdir = "Zettelkasten",
		new_notes_location = "notes_subdir",
		note_id_func = generate_note_id,
		note_frontmatter_func = generate_note_frontmatter,
		workspaces = {
			{
				name = "the-forrerst",
				path = "~/the-forrerst",
			},
		},
		daily_notes = {
			folder = "Journal",
			date_format = "%Y-%m-%d",
			alias_format = "%B %-d %Y",
			template = "daily_template.md",
		},

		wiki_link_func = "use_alias_only",
		preferred_link_style = "wiki",
		disable_frontmatter = false,

		picker = { name = "mini.pick" },
		sort_by = "modified",
		sort_reversed = true,

		completion = {
			blink = true,
			min_chars = 2,
			create_new = true,
		},

		ui = {
			enable = false,
			checkboxes = {
				[" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
				["x"] = { char = "", hl_group = "ObsidianDone" },
				["-"] = { char = "󰍵", hl_group = "ObsidianImportant" },
			},
		},
	},
	keys = require("config/keybindings/obsidian"),
}
