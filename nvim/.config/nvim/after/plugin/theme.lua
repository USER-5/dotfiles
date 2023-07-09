vim.cmd('colorscheme nord')

-- Customization for cmp window
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3b4252", fg = "NONE" })

vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#8fbcbb", bg = "NONE", strikethrough = true })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#5e81ac", bg = "NONE", bold = true })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#5e81ac", bg = "NONE", bold = true })

vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#eceff4", bg = "#bf616a" })
vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#eceff4", bg = "#bf616a" })
vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#eceff4", bg = "#bf616a" })

vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#eceff4", bg = "#a3be8c" })
vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#eceff4", bg = "#a3be8c" })
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#eceff4", bg = "#a3be8c" })

vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#2e3440", bg = "#ebcb8b" })
vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#2e3440", bg = "#ebcb8b" })
vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#2e3440", bg = "#ebcb8b" })

vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#eceff4", bg = "#5e81ac" })
vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#eceff4", bg = "#5e81ac" })
vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#eceff4", bg = "#5e81ac" })
vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#eceff4", bg = "#5e81ac" })
vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#eceff4", bg = "#5e81ac" })

vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#eceff4", bg = "#b48ead" })
vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#eceff4", bg = "#b48ead" })

vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#2e3440", bg = "#ebcb8b" })
vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#2e3440", bg = "#ebcb8b" })
vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#2e3440", bg = "#ebcb8b" })

vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#eceff4", bg = "#5e81ac" })
vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#eceff4", bg = "#5e81ac" })
vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#eceff4", bg = "#5e81ac" })

vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#2e3440", bg = "#88c0d0" })
vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#2e3440", bg = "#88c0d0" })
vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#2e3440", bg = "#88c0d0" })

