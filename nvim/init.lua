-- Aliases
opt = vim.opt
g = vim.g
cmd = vim.cmd
api = vim.api
keymap = vim.keymap
filetype = vim.filetype

-- Vim commands
cmd([[
set notimeout
set encoding=utf-8
syntax on
filetype plugin on
]])
opt.compatible = false -- disable compatibility to old-time vi
opt.showmatch = true -- show matching
opt.hlsearch = true -- highlight search
opt.incsearch = true -- incremental search
opt.tabstop = 2 -- number of columns occupied by a tab
opt.softtabstop = 2 -- see multiple spaces as tabstops so <BS> does the right thing
opt.expandtab = true -- converts tabs to white space
opt.shiftwidth = 2 -- width for autoindents
opt.autoindent = true -- indent a new line the same amount as the line just typed
opt.number = true -- add line numbers
opt.wildmode = "longest,list" -- get bash-like tab completions
opt.cc = "80" -- 80 width column border for good coding style
opt.clipboard = "unnamedplus" -- using system clipboard
opt.cursorline = true -- highlight current cursorline
opt.ttyfast = true -- Speed up scrolling in Vim

-- Provider settings
g.loaded_ruby_provider = 0 -- disable ruby plugins
g.loaded_perl_provider = 0 -- disable perl plugins
g.loaded_node_provider = 0 -- disable node plugins
g.python3_host_prog = "/Users/timforrer/.pyenv/versions/py3nvim/bin/python"

-- Load modules
require("keybindings")
require("plugins")
require("colorscheme")
require("autocmds")
require("nformat")
require("lsnip")
require("vtex")
