local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	-- Packer manages the plugins. Required
	use "wbthomason/packer.nvim"

	-- Theme
	use "rmehri01/onenord.nvim"

	-- File manager and dev icons
	use {
		"kyazdani42/nvim-tree.lua",
		requires = "nvim-tree/nvim-web-devicons",
	}

	-- Fuzzy finder (install fd and make / gcc)
	use {
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim", run = "make"
			},
		}
	}

	-- treesitter plugins
	use "nvim-telescope/telescope-ui-select.nvim"
	use "nvim-treesitter/nvim-treesitter-context"

	-- Helps neovim find its "root" of a project
	use "ahmedkhalf/project.nvim"

	-- Auto-insert closing braces, etc.
	use "windwp/nvim-autopairs"

	-- Better status line
	use {
		"nvim-lualine/lualine.nvim",
		requires = {
			"nvim-tree/nvim-web-devicons", opt = true
		},
	}

	use 'j-hui/fidget.nvim'

	-- Better syntax highlighting
	use {
		"nvim-treesitter/nvim-treesitter",
		-- Don"t fail upon first installation
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	}

	-- Enable comment/uncomment blocks
	use {
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end
	}

	use "gpanders/editorconfig.nvim"
	use "mbbill/undotree"
	use "tpope/vim-surround"
	use "tpope/vim-fugitive"

	-- All-in-one language server engine
	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"jose-elias-alvarez/null-ls.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",

			-- Autocompletion
			"hrsh7th/nvim-cmp",
			"onsails/lspkind.nvim",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",

			-- Snippets
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
		},
	}

	use {
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons"
	}

	use "folke/which-key.nvim"

	-- jinja / ansible syntax highlighting
	use "HiPhish/jinja.vim"

	use "mfussenegger/nvim-jdtls"

	use {
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify"
		}
	}

	-- Automatically set up your configuration after cloning packer.nvim
	if packer_bootstrap then
		require("packer").sync()
	end
end)
