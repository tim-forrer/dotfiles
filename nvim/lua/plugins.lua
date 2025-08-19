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
  "https://github.com/chrisgrieser/nvim-origami",
  "https://github.com/akinsho/toggleterm.nvim",
  { src = "https://github.com/Saghen/blink.cmp", version = vim.version.range('1.*'), build = "cargo build --release" },
  "https://github.com/obsidian-nvim/obsidian.nvim",
  "https://github.com/MeanderingProgrammer/render-markdown.nvim",
  "https://github.com/moyiz/blink-emoji.nvim",
})

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
  })
require("mini.ai").setup()
require("mini.bufremove").setup()
require("mini.icons").setup()
require("mini.statusline").setup()
require("mini.files").setup()
require("mini.surround").setup()
require("mini.tabline").setup()
require("mason").setup()
require("origami").setup()
require("toggleterm").setup()
require("uv").setup()
require("snacks").setup({
  picker = { enabled = true },
  statuscolumn = { enabled = true },
  image = {
    math = { enabled = false },
  },
  lazygit = { enabled = true },
  indent = { enabled = true },
  input = { enabled = true },
  notify = { enabled = true },
  notifier = { enabled = true },
})
require("obsidian").setup({
  workspaces = { { name = "the-forrerst", path = "~/the-forrerst" }, },
  notes_subdir = "Zettelkasten",
  daily_notes = { folder = "Journal", default_tags = {}, template = "daily_template.md" },
  completion = { nvim_cmp = false, blink = true, min_chars = 2, create_new = true },
  templates = { folder = "templates" },
  picker = { name = "snacks.pick" },
  ui = { enable = false, },
  legacy_commands = false,
  checkbox = { order = { " ", "x" }, },
})
require("render-markdown").setup({
  completions = {
    blink = { enabled = true },
    filter = {
      checkbox = function(value)
        return value.highlight ~= "RenderMarkdownTodo"
      end
    },
  },
  render_modes = { 'n', 'c', 't', 'i' },
  bullet = {
    enabled = true,
    icons = { "", "", "◆", "◇" },
  },
  latex = { enabled = false },
})
require("blink.cmp").setup({
  completion = {
    menu = { auto_show = true },
  },
  sources = {
    default = {
      "lsp",
      "buffer",
      "path",
    },
    per_filetype = {
      markdown = { "emoji" },
      gitcommit = { "emoji" },
    },
    providers = {
      emoji = {
        name = "Emoji",
        module = "blink-emoji",
        opts = {
          insert = true,
          trigger = ":",
        },
      }
    }
  },
  term = {
    enabled = true,
    sources = { "emoji", "path" }
  },
})
