-- Plugins
local tokyonight = { "folke/tokyonight.nvim", lazy = false, priority = 1000 }
local treesitter = { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
local coq = { "ms-jpq/coq_nvim", branch = "coq" }
local neoformat = { "sbdchd/neoformat" }
local luasnip = {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
}
local vimtex = { "lervag/vimtex", lazy = false }
local plenary = { "nvim-lua/plenary.nvim" }
local fzf = {
  "nvim-telescope/telescope-fzf-native.nvim",
  build = [[cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release &&
  cmake --build build --config Release &&
  cmake --install build --prefix build]],
}
local telescope = {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    plenary,
    fzf,
    treesitter,
  },
}

local obsidian = {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    plenary,
    treesitter,
    -- nvim_cmp, this is a dependency but cannot explicitly make it so
    telescope,
  },
  opts = {
    workspaces = {
      {
        name = "the-forrerst",
        path = "~/the-forrerst",
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
      new_notes_location = "current_dir",
      prepend_note_id = true,
    },
  },
}

-- Completion dependencies
local cmp_dependencies = {
  plenary,
  { "neovim/nvim-lspconfig" },
  -- Sources
  { "hrsh7th/cmp-nvim-lsp" },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-nvim-lua" },
  { "micangl/cmp-vimtex" },
  obsidian, -- Don't need to specify as a source
}

local nvim_cmp = {
  "hrsh7th/nvim-cmp",
  dependencies = cmp_dependencies,
}

local mason = { "williamboman/mason.nvim" }

-- Install lazy.nvim if not found
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
opt.rtp:prepend(lazypath)

-- Install Plugins
require("lazy").setup({
  tokyonight,
  treesitter,
  coq,
  neoformat,
  luasnip,
  vimtex,
  telescope,
  nvim_cmp,
  obsidian,
  mason,
})
