-- Options
vim.opt.compatible = false -- disable compatibility to old-time vi
vim.opt.showmatch = true -- show matching
vim.opt.hlsearch = false -- highlight search
vim.opt.incsearch = true -- incremental search
vim.opt.tabstop = 2 -- number of columns occupied by a tab
vim.opt.softtabstop = 2 -- see multiple spaces as tabstops
vim.opt.expandtab = true -- converts tabs to white space
vim.opt.shiftwidth = 2 -- width for autoindents
vim.opt.autoindent = true -- indent a new line the same amount as current line
vim.opt.number = true -- add line numbers
vim.opt.wildmode = "longest,list" -- get bash-like tab completions
vim.opt.cc = "80" -- 80 width column border for good coding style
vim.opt.clipboard = "unnamedplus" -- using system clipboard
vim.opt.cursorline = true -- highlight current cursorline
vim.opt.ttyfast = true -- Speed up scrolling in Vim

-- Provider settings
vim.g.loaded_ruby_provider = 0 -- disable ruby plugins
vim.g.loaded_perl_provider = 0 -- disable perl plugins
vim.g.loaded_node_provider = 0 -- disable node plugins
vim.g.python3_host_prog = "/Users/timforrer/.pyenv/versions/py3nvim/bin/python"

-- Global settings
vim.o.completeopt = "noselect"
vim.o.notimeout = true
vim.o.encoding = "utf-8"

-- Load modules
require("keybindings")
require("plugins")
require("autocmds")
