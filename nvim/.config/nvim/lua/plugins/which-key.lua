return {
	"folke/which-key.nvim",
	events = "VeryLazy",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300

		local wk = require("which-key")
		wk.register({
			f = { name = "file" }
		}, { prefix = "<leader>" })
	end,
}
