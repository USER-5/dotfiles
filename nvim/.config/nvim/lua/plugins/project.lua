return {
	"ahmedkhalf/project.nvim",
	event = "VeryLazy",
	opts = {
		detection_methods = { "pattern" },
	},
	config = function(_, opts)
		require("project_nvim").setup(opts)
	end,
}
