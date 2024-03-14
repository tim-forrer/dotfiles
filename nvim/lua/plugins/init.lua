-- Plugins
local plugins = {
  require("plugins.colorscheme"),
  require("plugins.treesitter"),
  require("plugins.neoformat"),
  require("plugins.luasnip"),
  require("plugins.vimtex"),
  require("plugins.cmp"),
  require("plugins.mason"),
  require("plugins.lsp"),
  require("plugins.telescope.fzf"),
  require("plugins.text-case"),
  require("plugins.telescope"),
  require("plugins.telescope.luasnip"),
  require("plugins.kmonad-vim"),
}

-- Build a table of the plugin config files
local build_config_table = function()
  local tbl = {}
  for _, v in pairs(plugins) do
    table.insert(tbl, v.lazy_config)
  end
  return tbl
end

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
vim.opt.rtp:prepend(lazypath)

-- Setup plugin config files
require("lazy").setup(build_config_table())

-- Load any specific functions if needed
for _, plugin in pairs(plugins) do
  -- Protected call since not every plugin has a .load() fn
  pcall(plugin.load)
end
