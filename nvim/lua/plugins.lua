-- Plugins
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

require("lazy").setup({
  {"folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {"nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {"ms-jpq/coq_nvim",
    branch = "coq"
  },
  {"sbdchd/neoformat"},
  {"L3MON4D3/LuaSnip",
	  version = "v2.*", 
	  build = "make install_jsregexp"
  }
})

g.neoformat_haskell_ormolu = { exe = "ormolu", args = {} }
g.neoformat_enabled_haskell = {"ormolu"}

