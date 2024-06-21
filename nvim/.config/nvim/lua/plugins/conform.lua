return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	cmd = "ConformInfo",
	keys = {
		{
			"<leader>o",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			desc = "Format Buffer (Conform)"
		}
	},
	opts = {
		formatters_by_ft = {
			javascript = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },
			markdown = { { "prettierd", "prettier" } },
			svelte = { { "prettierd", "prettier" } },
			html = { { "prettierd", "prettier" } },
			json = { { "prettierd", "prettier" } },
			css = { { "prettierd", "prettier" } },
			scss = { { "prettierd", "prettier" } },
			yaml = { { "prettierd", "prettier" } },
		}
	},
	setup = true
}
