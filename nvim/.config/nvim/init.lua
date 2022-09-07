-- allow hard (no cache) reload of config
function _G.ReloadConfig()
	package.loaded['indentation'] = nil
	package.loaded['plugins'] = nil
	package.loaded['keybinds'] = nil
	package.loaded['font'] = nil
	dofile(vim.env.MYVIMRC)
end

-- :ReloadConfig in the command line
vim.cmd('command! ReloadConfig lua ReloadConfig()')

if vim.g.neovide then require('neovide') end
require('plugins')
require('keybinds')
require('font')
require('indentation')

