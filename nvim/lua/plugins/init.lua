-- Plugins
local colorscheme = require("plugins.colorscheme")
local treesitter = require("plugins.treesitter")
local neoformat = require("plugins.neoformat")
local luasnip = require("plugins.luasnip")
local vimtex = require("plugins.vimtex")
local cmp = require("plugins.cmp")
local mason = require("plugins.mason")
local lsp = require("plugins.lsp")

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

-- Plugins to be installed
require("lazy").setup({
  colorscheme.lazy_config,
  treesitter.lazy_config,
  neoformat.lazy_config,
  luasnip.lazy_config,
  vimtex.lazy_config,
  cmp.lazy_config,
  mason.lazy_config,
  lsp.lazy_config,
})

-- Load configurations
colorscheme.load()
luasnip.load()
treesitter.load()
cmp.load()
mason.load()
lsp.load()
