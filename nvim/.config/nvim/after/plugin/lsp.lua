local null_ls = require('null-ls')
local mason_tool_installer = require('mason-tool-installer')
local lsp = require('lsp-zero')

-- Regular Null-ls servers.
local null_ls_formatters = { "black", "rustfmt", "shfmt" }
local null_ls_code_actions = {}
local null_ls_linters = {}

-- Regular LSPs
local mason_lsps = {
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
}

-- beware beyond here...

-- Configure special Null-LS Servers
local null_ls_sources = {
	null_ls.builtins.formatting.prettierd.with({
		extra_filetypes = { "markdown", "svelte" }
	}),
	null_ls.builtins.diagnostics.eslint_d.with({
		extra_filetypes = { "svelte" }
	}),
	null_ls.builtins.formatting.eslint_d.with({
		extra_filetypes = { "svelte" }
	}),
	null_ls.builtins.code_actions.eslint_d.with({
		extra_filetypes = { "svelte" }
	})
}
local mason_tools_lsps = { "prettierd", "eslint_d" }

table.foreach(null_ls_formatters, function(_, formatter)
	table.insert(null_ls_sources, null_ls.builtins.formatting[formatter])
	table.insert(mason_tools_lsps, formatter)
end)

table.foreach(null_ls_code_actions, function(_, code_action)
	table.insert(null_ls_sources, null_ls.builtins.code_actions[code_action])
	table.insert(mason_tools_lsps, code_action)
end)

table.foreach(null_ls_linters, function(_, linter)
	table.insert(null_ls_sources, null_ls.builtins.diagnostics[linter])
	table.insert(mason_tools_lsps, linter)
end)

-- Installs the non-LSP servers (formatters, etc.)
mason_tool_installer.setup {
	ensure_installed = mason_tools_lsps,
	auto_update = false,
	run_on_start = true,
}

null_ls.setup({
	debug = true,
	sources = null_ls_sources
})

lsp.ensure_installed(mason_lsps)
lsp.preset('recommended')

-- Runs for each buffer
lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
	local noremap = { buffer = bufnr, remap = false }
	vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, noremap)
	vim.keymap.set('n', '<leader>o', vim.lsp.buf.format, noremap)
	vim.keymap.set('n', '<leader>.', vim.lsp.buf.code_action, noremap)
	vim.opt.signcolumn = 'yes'
end)

-- Custom options for certain languages
lsp.configure('rust_analyzer', {
	settings = {
		['rust-analyzer'] = {
			check = {
				command = "clippy"
			},
			diagnostics = {
				experimental = {
					enable = true
				}
			}
		}
	}
})

lsp.setup()

local lspkind = require('lspkind')
local cmp = require('cmp')
cmp.setup({
	window = {
		completion = {
			col_offset = -3,
			side_padding = 0
		}
	},
	preselect = 'none',
	completion = {
			completeopt = 'noselect'
	},
	experimental = {
		ghost_text = true,
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			vim_item = lspkind.cmp_format({
				mode = "symbol",
				menu = ({
					buffer = "",
					nvim_lsp = "",
					luasnip = "",
				})
			})(entry, vim_item)
			vim_item.kind = " " .. (vim_item.kind or "") .. " "
			return vim_item
		end
	}
})

