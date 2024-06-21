return {
	"rmehri01/onenord.nvim",
	lazy = false,
	opts = {
		styles = {
			comments = "italic",
		}
	},
	config = function()
		vim.cmd('colorscheme onenord')

		-- Set background colours to none
		vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
		vim.cmd("highlight NormalNC ctermbg=NONE guibg=NONE")
		vim.cmd("highlight NormalFloat ctermbg=NONE guibg=NONE")
		vim.cmd("highlight FloatBorder ctermbg=NONE guibg=NONE")
		vim.cmd("highlight TelescopeNormal ctermbg=NONE guibg=NONE")
		vim.cmd("highlight CursorLine ctermbg=NONE guibg=NONE")
		vim.cmd("highlight CursorColumn ctermbg=NONE guibg=NONE")
		vim.cmd("highlight NeoTreeNormal ctermbg=NONE guibg=NONE")
		vim.cmd("highlight NvimTreeNormal ctermbg=NONE guibg=NONE")
		vim.cmd("highlight NvimTreeNormalFloat ctermbg=NONE guibg=NONE")
		vim.cmd("highlight BufferInactive ctermbg=NONE guibg=NONE")
		vim.cmd("highlight BufferInactiveMod ctermbg=NONE guibg=NONE")
		vim.cmd("highlight BufferInactiveSign ctermbg=NONE guibg=NONE")
		vim.cmd("highlight BufferInactiveIndex ctermbg=NONE guibg=NONE")
		vim.cmd("highlight BufferInactiveTarget ctermbg=NONE guibg=NONE")

		local colors = require('onenord.colors').load()

		-- Customization for cmp window
		vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.bg, fg = "NONE" })

		vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = colors.gray, bg = "NONE", strikethrough = true })
		vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = colors.blue, bg = "NONE", bold = true })
		vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = colors.blue, bg = "NONE", bold = true })

		vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = colors.fg_light, bg = colors.gray })
		vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = colors.fg_light, bg = colors.gray })
		vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = colors.fg_light, bg = colors.gray })

		vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = colors.fg_light, bg = colors.purple })
		vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = colors.fg_light, bg = colors.purple })
		vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = colors.fg_light, bg = colors.purple })

		vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = colors.fg_light, bg = colors.dark_pink })
		vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = colors.fg_light, bg = colors.dark_pink })
		vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = colors.fg_light, bg = colors.dark_pink })

		vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = colors.fg_light, bg = colors.dark_red })
		vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = colors.fg_light, bg = colors.dark_red })
		vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = colors.fg_light, bg = colors.dark_red })
		vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = colors.fg_light, bg = colors.dark_red })
		vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = colors.fg_light, bg = colors.dark_red })

		vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = colors.fg_light, bg = colors.dark_blue })
		vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = colors.fg_light, bg = colors.dark_blue })

		vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = colors.fg_light, bg = colors.dark_blue })
		vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = colors.fg_light, bg = colors.orange })
		vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = colors.fg_light, bg = colors.dark_blue })

		vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = colors.fg_light, bg = colors.green })
		vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = colors.fg_light, bg = colors.green })
		vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = colors.fg_light, bg = colors.green })

		vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = colors.fg_light, bg = colors.cyan })
		vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = colors.fg_light, bg = colors.cyan })
		vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = colors.fg_light, bg = colors.cyan })
	end
}
