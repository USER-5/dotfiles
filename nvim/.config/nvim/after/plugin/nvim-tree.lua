-- empty setup using defaults
require("nvim-tree").setup({
	update_cwd = true,
	renderer = {
		group_empty = true
	}
})

-- keybinds
vim.keymap.set('n', '<leader>n', '<Cmd> NvimTreeFindFile<CR>', { desc = "Show current file in tree" })
vim.keymap.set('n', '<leader>t', '<Cmd> NvimTreeToggle<CR>', { desc = "File tree" })
