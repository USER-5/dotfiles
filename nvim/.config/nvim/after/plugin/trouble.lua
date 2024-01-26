require('trouble').setup()

vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>',
	{ silent = true, noremap = true, desc = "Project diagnostics" })
vim.keymap.set('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>',
	{ silent = true, noremap = true, desc = "Document diagnostics" })
local wk = require("which-key")
wk.register({
	x = {
		name = "Trouble"
	}
}, { prefix = "<leader>" })
