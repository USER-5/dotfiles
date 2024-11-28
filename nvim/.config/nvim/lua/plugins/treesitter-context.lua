return {
	"nvim-treesitter/nvim-treesitter-context",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		multiline_threshold = 2,
		mode = 'topline',
	}
}
