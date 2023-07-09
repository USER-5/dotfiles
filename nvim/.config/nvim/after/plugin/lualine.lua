require('lualine').setup {
	options = {
		theme = 'nord',
		section_separators = { left = '', right = '' }
	},
	extensions = { 'nvim-tree', 'trouble', 'quickfix', 'fugitive' },
	sections = {
		lualine_b = { 'branch' },
		lualine_c = {
			{
				'filename',
				file_status = false,
				path = 3,
			}
		},
		lualine_x = { 'filetype' },
		lualine_y = { 'diagnostics' }
	},
}
