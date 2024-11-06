local lsps = {
	"ansiblels",
	"bashls",
	"cssls",
	"dockerls",
	"html",
	"jsonls",
	"pyright",
	"rust_analyzer",
	"ts_ls",
	"svelte",
	"tailwindcss",
	"ruff",
	"eslint",
	"lua_ls",
	"prettierd",
}

return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = lsps,
		},
		event = "VeryLazy",
		config = true,
	},
	-- mason itself
	{
		"williamboman/mason.nvim",
		config = true,
		cmd = "Mason",
	},
	-- lspconfig for mason
	{
		"williamboman/mason-lspconfig.nvim",
		event = "VeryLazy",
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
				"ts_ls",
				"svelte",
				"tailwindcss",
				"ruff",
				"eslint"
			},
			auto_update = false,
			run_on_start = true,
		},
		config = true,
	}
}
