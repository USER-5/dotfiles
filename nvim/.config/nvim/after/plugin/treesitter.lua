require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "rust", "typescript", "svelte", "css", "bash", "comment", "python", "c_sharp", "diff",
		"dockerfile", "gitcommit", "html", "javascript", "jsdoc", "json", "markdown", "yaml" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	}
}

vim.filetype.add({ extension = { wgsl = "wgsl" } })
