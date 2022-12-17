vim.g.onedark_terminal_italics = 1
vim.cmd('colorscheme nightfox')
if not vim.g.neovide then
	vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
end
