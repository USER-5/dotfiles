return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		{
			"L3MON4D3/LuaSnip",
			-- follow latest release.
			version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
			-- install jsregexp (optional!).
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip",   -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"onsails/lspkind.nvim",       -- vs-code like pictograms
	},
	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		local lspkind = require("lspkind")

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			window = {
				completion = {
					col_offset = -3,
					side_padding = 0,
				},
			},
			preselect = "none",
			completion = {
				completeopt = "menu,menuone,preview,noselect",
			},
			experimental = {
				ghost_text = true,
			},

			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
			}),

			mapping = cmp.mapping.preset.insert({
				-- ["<C-p>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				-- ["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
				-- ["<C-y>"] = cmp.mapping.confirm({ select = false }),
			}),

			-- configure lspkind for vs-code like pictograms in completion menu
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
			},
		})
	end,
}
