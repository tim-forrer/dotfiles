local utils = require("config.keybindings.utils")

-- Default options
local keymap = vim.keymap.set
local opts = { noremap = true, silent = false }

-- Keybindings
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Normal --
keymap("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>", opts)
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)

-- Navigate buffers
keymap("n", "<C-Tab>", ":bnext<CR>", opts)
keymap("n", "<C-S-Tab>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
