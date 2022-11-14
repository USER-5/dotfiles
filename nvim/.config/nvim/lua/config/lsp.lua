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

local cmp_status_ok, cmp = pcall(require, 'cmp_nvim_lsp')
if not cmp_status_ok then
	local capabilities = {}
else
	local capabilities = require('cmp_nvim_lsp').default_capabilities()
end

---------------
-- languages --
---------------

-- Rust 
-- requires: rust-analyzer to be installed (OS dependant)
lsp.rust_analyzer.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}

-- Python
-- requires: $ pip install python-lsp-server
-- optional: $ pip install yapf pycodestyle rope pyflakes
lsp.pylsp.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}

-- !! FOR NPM INSTALLED PACKAGES !!
-- ensure that nvm is properly configured to auto-load an npm version
-- if on fish, will need a fix for nvm's default:
-- https://github.com/FabioAntunes/fish-nvm - see the nvm_alias_function if it works
-- you _may_ need to `$ sudo fish` first

-- Bash
-- requires: $ npm install -g bash-language-server
-- from fresh terminal: $ bash-language-server -v
-- optional: shellcheck (OS dependant)
lsp.bashls.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}

-- Typescript
-- requires: $ npm install -g typescript typescript-language-server
-- from fresh terminal: $ typescript-language-server --stdio
lsp.tsserver.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}

-- ESLint
-- requires: $ npm install -g vscode-langservers-extracted
-- from fresh terminal: $ vscode-eslint-language-server --stdio
lsp.eslint.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}

-- Svelte
-- requires: $ npm install -g svelte-language-server
-- from fresh terminal: $ svelteserver --stdio
lsp.svelte.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}

-- Tailwind
-- requires: $ npm install -g @tailwindcss/language-server
-- from fresh terminal: $ tailwindcss-language-server --stdio
lsp.tailwindcss.setup{
	on_attach = on_attach,
	capabilities = capabilities,
}

-- Angular
-- requires: $ npm install -g @angular/language-server
-- from fresh terminal: $ ngserver --stdio
lsp.angularls.setup{
       on_attach = on_attach,
       capabilities = capabilities,
}
