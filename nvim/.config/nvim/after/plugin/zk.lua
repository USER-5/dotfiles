require("zk").setup({
	-- can be "telescope", "fzf" or "select" (`vim.ui.select`)
	-- it's recommended to use "telescope" or "fzf"
	picker = "telescope",
})

-- zn = zk new
-- zt = zk tags
-- zi = zk index
-- zp = zk picker
-- zl = zk links
vim.api.nvim_set_keymap('n', '<leader>zn', '<cmd>ZkNew<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>zt', '<cmd>ZkTags<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>zi', '<cmd>ZkIndex<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>zp', '<cmd>ZkNotes<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>zl', '<cmd>ZkLinks<cr>', {})
