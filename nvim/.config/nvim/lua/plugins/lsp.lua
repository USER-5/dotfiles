return {
	"neovim/nvim-lspconfig",
	config = function(_, opts)
		vim.lsp.enable('tsgo')
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('eslint')
		vim.lsp.enable('pyright')
		vim.lsp.enable('ruff')
	end,
}

