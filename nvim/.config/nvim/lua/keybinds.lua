-- Set leader to space
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Macos Pasting
vim.keymap.set('i', '<D-v>', '<c-r>+')
-- paste even in normal mode.
vim.keymap.set('n', '<D-v>', '"+p')

-- allow moving highlighted code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection up a row" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection down a row" })

-- better J behaviour (maintain cursor location)
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in centre when doing ctrl+d/u and searching
vim.keymap.set("n", "<leader>j", "<C-d>zz", { desc = "Scroll up half a page" })
vim.keymap.set("n", "<leader>k", "<C-u>zz", { desc = "Scroll down half a page" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- non-buffer overriding paste
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste but maintain buffer" })

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Copy to system clipboard" })
