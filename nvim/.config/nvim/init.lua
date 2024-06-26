local modules = {
	'keybinds',
	'editor',
	'indentation',
	'plugin-loader',
}

-- allow hard (no cache) reload of config
function _G.ReloadConfig()
	-- special case for neovide
	package.loaded.neovide = nil
	print("Reloading module: neovide")
	table.foreach(modules, function(_, module)
		package.loaded[module] = nil
		print("Reloading module: "..module)
	end)
	dofile(vim.env.MYVIMRC)
end

-- :ReloadConfig in the command line
vim.cmd('command! ReloadConfig lua ReloadConfig()')

table.foreach(modules, function(_, module)
	require(module)
end)
