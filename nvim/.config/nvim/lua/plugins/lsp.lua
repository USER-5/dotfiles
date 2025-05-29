return {
	"neovim/nvim-lspconfig",
	config = function(_, opts)
		vim.lsp.enable('vtsls')
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('eslint')
	end,
}

