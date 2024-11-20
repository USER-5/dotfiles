return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>ha",
			function() require("harpoon"):list():add() end,
			desc = "Harpoon Add"
		},
		{
			"<leader>hh",
			function() 
				local file_paths = {}
				for _, item in ipairs(require("harpoon"):list().items) do
					table.insert(file_paths, item.value)
				end
				
				local conf = require("telescope.config").values
				require("telescope.pickers").new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				}):find()
			end,
			desc = "Show Harpoon List",
		},
	},
}
