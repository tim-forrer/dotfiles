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
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

-- Insert --
keymap("i", "<CR>", utils.replaceBlankCommentLine, { noremap = true, silent = false, expr = true })

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
