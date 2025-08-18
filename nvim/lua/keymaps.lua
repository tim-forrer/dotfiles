local set = vim.keymap.set
vim.g.mapleader = ","
set("n", "<leader>r", ":update<CR>:source<CR>", { desc = "Source config file" })
set("n", "<leader>w", ":write<CR>")
set("n", "<leader>q", ":quit<CR>")
set("n", "<C-D>", "<C-D>zz")
set("n", "<C-U>", "<C-U>zz")
set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format current buffer" })
set({ "n", "t" }, "<leader>t", "<cmd>ToggleTerm size=40 direction=vertical<CR>", { desc = "Toggle terminal" })

-- Obsidian
set("n", "<space>ot", ":Obsidian today<CR>", { desc = "Open today's daily note" })
set("n", "<space>op", ":Obsidian<CR>", { desc = "Open the obsidian picker" })

-- Mini
set("n", "<space>w", MiniBufremove.delete, { desc = "Delete buffer" })
set("n", "<space><space>", MiniFiles.open, { desc = "File explorer" })

-- Snacks
set("n", "<space>f", Snacks.picker.files, { desc = "File picker" })
set("n", "<space>d", Snacks.picker.diagnostics, { desc = "Diagnostics picker" })
set("n", "<space>c", Snacks.picker.commands, { desc = "Command picker" })
set("n", "<space>/", Snacks.picker.grep, { desc = "Grep in files" })
set("n", "<space>k", Snacks.picker.keymaps, { desc = "Keymap picker" })
set("n", "<space>p", Snacks.picker.pickers, { desc = "Picker picker" })
set("n", "<space>g", Snacks.lazygit.open, { desc = "Lazygit" })
