vim.cmd('set ts=2 sw=2')
vim.cmd('set listchars=tab:->,extends:>,precedes:<,nbsp:·,trail:·')
vim.cmd('set list')

vim.cmd('set number relativenumber')
-- Disables adding a new comment on single-line comments
vim.cmd('au FileType * set fo-=r fo-=o')
