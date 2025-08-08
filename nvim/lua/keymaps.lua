vim.g.mapleader = ","
vim.keymap.set("n", "<leader>r", ":update<CR>:source<CR>", {desc = "Source config file"})
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<C-D>", "<C-D>zz")
vim.keymap.set("n", "<C-U>", "<C-U>zz")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {desc = "Format current buffer"})

-- Mini
vim.keymap.set("n", "<space>w", MiniBufremove.delete, {desc = "Delete buffer"})
vim.keymap.set("n", "<space><space>", MiniFiles.open, {desc = "File explorer"})

-- Snacks
vim.keymap.set("n", "<space>f", Snacks.picker.files, {desc = "File picker"})
vim.keymap.set("n", "<space>d", Snacks.picker.diagnostics, {desc = "Diagnostics picker"})
vim.keymap.set("n", "<space>c", Snacks.picker.commands, {desc = "Command picker"})
vim.keymap.set("n", "<space>/", Snacks.picker.grep, {desc = "Grep in files"})
vim.keymap.set("n", "<space>k", Snacks.picker.keymaps, {desc = "Keymap picker"})
vim.keymap.set("n", "<space>p", Snacks.picker.pickers, {desc = "Picker picker"})
vim.keymap.set("n", "<space>g", Snacks.lazygit.open, {desc = "Lazygit"})
