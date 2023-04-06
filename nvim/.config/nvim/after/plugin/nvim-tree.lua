-- empty setup using defaults
require("nvim-tree").setup({
	update_cwd = true
})

-- keybinds
vim.keymap.set('n', '<leader>n', '<Cmd> NvimTreeFindFile<CR>')
vim.keymap.set('n', '<leader>t', '<Cmd> NvimTreeToggle<CR>')
