local lsps = {
	"ansiblels",
	"bashls",
	"cssls",
	"dockerls",
	"html",
	"jsonls",
	"pyright",
	"rust_analyzer",
	"tsserver",
	"svelte",
	"tailwindcss",
	"ruff",
	"eslint",
	"lua_ls",
}

return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = lsps,
		},
		events = "VeryLazy",
		config = true,
	},
	-- mason itself
	{
		"williamboman/mason.nvim",
		config = true,
	},
	-- lspconfig for mason
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim"
		},
		opts = {
			ensure_installed = {
				"ansiblels",
				"bashls",
				"cssls",
				"dockerls",
				"html",
				"jsonls",
				"pyright",
				"rust_analyzer",
				"tsserver",
				"svelte",
				"tailwindcss",
				"ruff",
				"eslint-lsp"
			},
			auto_update = false,
			run_on_start = true,
		},
		config = true,
	}
}
