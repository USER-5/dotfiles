vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.cmd('set noexpandtab')

vim.cmd('set listchars=tab:->,extends:>,precedes:<,nbsp:·,trail:·')
vim.cmd('set list')

vim.cmd('set number relativenumber')
-- Disables adding a new comment on single-line comments
vim.cmd('set fo-=r fo -=o')
