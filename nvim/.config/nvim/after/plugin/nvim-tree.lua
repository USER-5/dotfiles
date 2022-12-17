-- empty setup using defaults
require("nvim-tree").setup({
	update_cwd = true
})

-- keybinds
vim.keymap.set('n', '<C-n>', '<Cmd> NvimTreeFindFile<CR>')
vim.keymap.set('n', '<C-t>', '<Cmd> NvimTreeToggle<CR>')
