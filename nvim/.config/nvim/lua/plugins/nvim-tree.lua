return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = true,
	cmd = {
		"NvimTreeFindFile",
		"NvimTreeToggle",
		"NvimTreeOpen",
		"NvimTreeFocus",
		"NvimTreeCollapse",
	},
	keys = {
		{ "<leader>n", "<Cmd> NvimTreeFindFile<CR>", desc = "Show current file in tree" },
		{ "<leader>t", "<Cmd> NvimTreeToggle<CR>", desc = "Toggle file tree" },
	},
	opts = {
		update_cwd = true,
		renderer = {
			group_empty = true,
		},
		view = {
			width = 60,
		},
		sync_root_with_cwd = true,
		respect_buf_cwd = true,
		update_focused_file = {
			enable = true,
			update_root = true,
		},
	},
}
