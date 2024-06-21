return {
	"nvim-telescope/telescope.nvim", branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim", 
		"nvim-telescope/telescope-ui-select.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = {
		defaults = {
			vimgrep_arguments = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
				"--hidden"
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
				require("telescope.themes").get_cursor({})
			}
		},
		pickers = {
			find_files = {
				hidden = true
			}
		}
	},
	config = function(_, opts)
		local ts = require("telescope")
		ts.setup(opts)
		if vim.fn.executable("make") == 1 then
			ts.load_extension("fzf")
		else
			print("fzf is not loaded - recommend installing make")
		end

		ts.load_extension("ui-select")

		if vim.fn.executable("fd") == 0 then
			print("fd not installed - recommend installing")
		end

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep for Files (Telesope)" })
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy Search Files (Telesope)" })

	end,

}
