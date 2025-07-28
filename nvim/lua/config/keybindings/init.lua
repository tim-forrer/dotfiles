local keymap = vim.keymap.set
local opts = { noremap = true, silent = false }
local opts_with_desc = function(desc)
	opts.desc = desc
	return opts
end

-- Keybindings
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Normal --
keymap("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>", opts_with_desc("Source config"))
keymap("n", "<leader>w", ":w<CR>", opts_with_desc("Write buffer to file"))
keymap("n", "<leader>q", ":q<CR>", opts_with_desc("Quit neovim"))
keymap("n", "<leader>d", vim.diagnostic.open_float, opts_with_desc("Show diagnostics"))
keymap("n", "<leader>k", vim.lsp.buf.hover, opts_with_desc("Show definition using LSP"))

-- Windows (Panes) --
keymap("n", "<leader>-", ":belowright split<CR>", opts_with_desc("Open a new window below"))
keymap("n", "<leader>\\", ":belowright vsplit<CR>", opts_with_desc("Open a new window to the right"))
keymap("n", "H", ":wincmd h<CR>", opts_with_desc("Move one window to the left"))
keymap("n", "L", ":wincmd l<CR>", opts_with_desc("Move one window to the right"))
keymap("n", "J", ":wincmd j<CR>", opts_with_desc("Move one window down"))
keymap("n", "K", ":wincmd k<CR>", opts_with_desc("Move one window up"))

-- Navigate buffers
keymap("n", "<C-S-l>", vim.cmd.bnext, opts_with_desc("Switch to next buffer"))
keymap("n", "<C-S-h>", vim.cmd.bprevious, opts_with_desc("Switch to prior buffer"))

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts_with_desc("Shift block left"))
keymap("v", ">", ">gv", opts_with_desc("Shift block right"))
