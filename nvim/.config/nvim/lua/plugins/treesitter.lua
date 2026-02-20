return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	branch = "main",
	config = function()
		require('nvim-treesitter').install({ "c",
		"lua",
		"rust",
		"typescript",
		"svelte",
		"css",
		"bash",
		"comment",
		"python",
		"c_sharp",
		"diff",
		"dockerfile",
		"gitcommit",
		"html",
		"javascript",
		"jsdoc",
		"json",
		"markdown",
		"yaml" })
	end
}
