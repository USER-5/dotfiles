return {
	"neovim/nvim-lspconfig",
	config = function(_, opts)
		vim.lsp.enable('vtsls')
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('eslint')
		vim.lsp.enable('pyright')
		vim.lsp.enable('ruff')
		vim.lsp.config('java-language-server', {
			cmd = { 'java-language-server' }
		})
		-- This looks like the best option, but it totally craps out on me
		-- vim.lsp.enable('java-language-server')
	end,
}

