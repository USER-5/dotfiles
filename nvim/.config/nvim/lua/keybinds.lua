vim.cmd("nnoremap \\ Nop")
vim.g.mapleader = "\\"
vim.api.nvim_set_keymap('i', '<D-v>', '<c-r>+', {})
vim.api.nvim_set_keymap('n', '<D-v>', '"+p', {})
