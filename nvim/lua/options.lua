local tab_size = 2
local o = vim.o
o.encoding = "utf-8"
o.background = "dark"
o.number = true
o.relativenumber = true
o.smartindent = true
o.expandtab = true
o.tabstop = tab_size
o.softtabstop = tab_size
o.shiftwidth = tab_size
o.swapfile = false
o.winborder = "rounded"
o.completeopt = "menu,menuone,noselect"
o.wildmode = "longest,list"
o.clipboard = "unnamedplus"
o.cursorline = true
o.ttyfast = true
o.wrap = true
o.linebreak = true
o.breakindent = true
o.foldlevel = 99
o.foldlevelstart = 99

vim.diagnostic.config({
  signs = true,
  float = {
    width = 50,
  },
})
