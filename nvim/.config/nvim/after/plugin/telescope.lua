require('telescope').setup {
	defaults = {
		vimgrep_arguments = {
			'rg',
			'--color=never',
			'--no-heading',
			'--with-filename',
			'--line-number',
			'--column',
			'--smart-case',
			'--hidden'
		}
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case"
		},
		["ui-select"] = {
			require('telescope.themes').get_cursor({})
		}
	}
}

if vim.fn.executable('make') == 1 then
	require('telescope').load_extension('fzf')
else
	print("fzf not loaded - recommend installing make")
end

require('telescope').load_extension('ui-select')

if vim.fn.executable('fd') == 0 then
	print("fd not installed - recommend installing")
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
