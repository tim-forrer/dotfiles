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
local nvim_lspconfig = { "neovim/nvim-lspconfig" }
local cmp_nvim_lsp = { "hrsh7th/cmp-nvim-lsp" }
local cmp_buffer = { "hrsh7th/cmp-buffer" }
local cmp_path = { "hrsh7th/cmp-path" }
local cmp_cmdline = { "hrsh7th/cmp-cmdline" }
local cmp_luasnip = { "saadparwaiz1/cmp_luasnip" }
local nvim_cmp = {
  "hrsh7th/nvim-cmp",
  dependencies = {
    nvim_lspconfig,
    cmp_nvim_lsp,
    cmp_buffer,
    cmp_path,
    cmp_cmdline,
    cmp_luasnip,
  },
}

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
})
