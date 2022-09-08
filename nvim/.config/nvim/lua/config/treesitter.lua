require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "rust", "typescript", "svelte", "css", "bash", "comment" },
	highlight = {
		enable = true,
	}
}
