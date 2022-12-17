vim.opt.number = true
vim.opt.relativenumber = true

-- Disables adding a new comment on single-line comments
vim.cmd('au FileType * set fo-=r fo-=o')

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.opt.scrolloff = 8

