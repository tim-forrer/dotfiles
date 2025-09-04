vim.pack.add({
  -- Appearance
  "https://github.com/f-person/auto-dark-mode.nvim",
  "https://github.com/EdenEast/nightfox.nvim",
  "https://github.com/chrisgrieser/nvim-origami",
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/MeanderingProgrammer/render-markdown.nvim",
  -- Specialist
  "https://github.com/obsidian-nvim/obsidian.nvim",
  -- Completion
  { src = "https://github.com/Saghen/blink.cmp", version = vim.version.range('1.*'), build = "cargo build --release" },
  "https://github.com/moyiz/blink-emoji.nvim",
  "https://github.com/MahanRahmati/blink-nerdfont.nvim",
  -- Utils
  "https://github.com/echasnovski/mini.nvim",
  "https://github.com/folke/snacks.nvim",
  "https://github.com/benomahony/uv.nvim",
  "https://github.com/folke/which-key.nvim",
  "https://github.com/akinsho/toggleterm.nvim",
  "https://github.com/stevearc/conform.nvim",
  -- LSP
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/mason-org/mason-lspconfig.nvim",
  "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
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
require("origami").setup(
  { foldKeymaps = { setup = false } }
)
require("toggleterm").setup()
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
  templates = { folder = "Templates" },
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
      markdown = { "emoji", "nerdfont" },
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
      },
      nerdfont = {
        name = "Nerdfont",
        module = "blink-nerdfont",
        opts = { insert = true },
      }
    }
  },
  term = {
    enabled = true,
    sources = { "emoji", "path" }
  },
})
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
  ensure_installed = {
    "pyright",
    "ruff",
    "rust-analyzer",
    "lua-language-server",
    "mmdc",
    "prettier",
    "tailwindcss-language-server",
    "tree-sitter-cli",
    "stylua",
    "tinymist",
  },
})
require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
    rust = { "rustfmt", "dioxus", lsp_format = "fallback" },
  },
})

