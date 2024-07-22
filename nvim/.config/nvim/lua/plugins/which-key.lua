return {
	"folke/which-key.nvim",
	events = "VeryLazy",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300

		local wk = require("which-key")
		wk.add({
			{ "<leader>f", group = "file" }
		})
	end,
}
