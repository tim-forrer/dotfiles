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
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		-- 'super-tab' for mappings similar to vscode (tab to accept)
		-- 'enter' for enter to accept
		-- 'none' for no mappings
		--
		-- All presets have the following mappings:
		-- C-space: Open menu or open docs if already open
		-- C-n/C-p or Up/Down: Select next/previous item
		-- C-e: Hide menu
		-- C-k: Toggle signature help (if signature.enabled = true)
		--
		-- See :h blink-cmp-config-keymap for defining your own keymap
		keymap = { preset = "default" },

		appearance = {
			-- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- Adjusts spacing to ensure icons are aligned
			nerd_font_variant = "normal",
		},

		-- (Default) Only show the documentation popup when manually triggered
		completion = { documentation = { auto_show = false } },

		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			-- https://cmp.saghen.dev/recipes.html#dynamically-picking-providers-by-treesitter-node-filetype
			default = function()
				local cmp_table = { "lsp", "path", "buffer" }
				local filetype = vim.bo.filetype
				if filetype == "lua" then
					table.insert(cmp_table, "lazydev")
				elseif filetype == "markdown" then
					cmp_table = { "buffer", "emoji", "nerdfont" }
				end
				return cmp_table
			end,
			per_filetype = {
				markdown = { "emoji", "nerdfont" },
			},
			providers = {
				emoji = {
					name = "Emoji",
					module = "blink-emoji",
					score_offset = 15,
					opts = {
						insert = true, -- Insert emoji (default) or complete its name
						---@type string|table|fun():table
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
		},
		term = {
			enabled = true,
			keymap = { preset = "inherit" },
			sources = { "emoji", "path" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
