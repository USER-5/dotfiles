return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{
			"<leader>ha",
			function() require("harpoon"):list():add() end,
			desc = "Harpoon Add"
		},
		{
			"<leader>hh",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Show Harpoon List",
		},
	},
}
