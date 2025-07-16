local cmp_sources = {
	providers = {
		emoji = {
			name = "Emoji",
			module = "blink-emoji",
			score_offset = 15,
			opts = {
				insert = true,
				trigger = function()
					return { ":" }
				end,
			},
		},
		lazydev = {
			name = "LazyDev",
			module = "lazydev.integrations.blink",
			score_offset = 100,
		},
		nerdfont = {
			name = "Nerd Fonts",
			module = "blink-nerdfont",
			score_offset = 10,
			opts = { insert = true },
		},
	},
}

cmp_sources.default = { "lsp", "path" }
cmp_sources.per_filetype = {
	markdown = { "path", "emoji", "nerdfont" },
	lua = { "lsp", "path", "lazydev" },
}

local completion = {
	documentation = { auto_show = true },
}
completion.list = {
	max_items = 20,
	selection = { preselect = false },
}

return {
	"saghen/blink.cmp",
	dependencies = {
		"moyiz/blink-emoji.nvim",
		"MahanRahmati/blink-nerdfont.nvim",
	},
	-- use a release tag to download pre-built binaries
	version = "1.*",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },

		appearance = {
			nerd_font_variant = "normal",
		},

		-- (Default) Only show the documentation popup when manually triggered
		completion = completion,
		sources = cmp_sources,
		term = {
			enabled = true,
			keymap = { preset = "inherit" },
			sources = { "emoji", "path" },
		},
	},

	opts_extend = { "sources.default" },
}
