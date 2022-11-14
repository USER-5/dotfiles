local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.on_attach(function(client, bufnr)
	local noremap = { buffer = bufnr, remap = false }

	vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, noremap)
	vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, noremap)
end)
lsp.setup()
