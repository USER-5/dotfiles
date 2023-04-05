require('telescope').setup {
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case"
		}
	},
	pickers = {
		find_files = {
			hidden = true
		}
	}
}

if vim.fn.executable('make') == 1 then
	require('telescope').load_extension('fzf')
else
	print("fzf not loaded - recommend installing make")
end

if vim.fn.executable('fd') == 0 then
	print("fd not installed - recommend installing")
end

vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>Telescope find_files<cr>', {})
