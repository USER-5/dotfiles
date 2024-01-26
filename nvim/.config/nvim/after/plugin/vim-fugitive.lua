vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git Status" })
local wk = require("which-key")
wk.register({
	g = {
		name = "Git"
	}
}, { prefix = "<leader>" })
