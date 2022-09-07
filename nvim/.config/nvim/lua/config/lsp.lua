-- config
local opts = { noremap=true, silent=true }

local lsp = require "lspconfig"

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
local on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap=true, silent=true, buffer=bufnr }
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set('n', '<space>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end


---------------
-- languages --
---------------

-- Rust 
-- requires: rust-analyzer to be installed (OS dependant)
lsp.rust_analyzer.setup{
	on_attach = on_attach
}

-- Python
-- requires: $ pip install python-lsp-server
-- optional: $ pip install yapf pycodestyle rope pyflakes
lsp.pylsp.setup{
	on_attach = on_attach
}

-- Bash
-- requires: $ npm install -g bash-language server
-- * ensure that nvm is properly configured to auto-load an npm version
-- * if on fish, will need a fix for nvm's default:
-- * https://github.com/FabioAntunes/fish-nvm
-- optional: shellcheck (OS dependant)
lsp.bashls.setup{
	on_attach = on_attach
}
