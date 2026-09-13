return {
	"neovim/nvim-lspconfig",
	config = function(_, opts)
		vim.lsp.enable('tsc')
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('eslint')
		vim.lsp.enable('pyright')
		vim.lsp.enable('ruff')
		vim.lsp.enable('svelte')
		vim.lsp.enable('tailwindcss')
	end,
}

