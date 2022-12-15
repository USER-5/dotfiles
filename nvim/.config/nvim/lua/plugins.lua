local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	-- Packer manages the plugins. Required
	use 'wbthomason/packer.nvim'

	-- Theme
	use {'joshdick/onedark.vim', config = [[require('config.onedark')]] }

	-- File manager and dev icons
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		config = [[require('config.nvim-tree')]]
	}

	-- Fuzzy finder (install fd and make / gcc)
	use {
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		requires = {
			'nvim-lua/plenary.nvim',
			{
				'nvim-telescope/telescope-fzf-native.nvim', run='make'
			}
		},
		config = [[require('config.telescope')]]
	}

	-- Helps neovim find its "root" of a project
	use {
		'ahmedkhalf/project.nvim',
		config = [[require('config.project')]]
	}

	-- Auto-insert closing braces, etc.
	use {
		'jiangmiao/auto-pairs', config = [[require('config.auto-pairs')]]
	}

	-- Better status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons', opt=true
		},
		config = [[ require('config.lualine') ]]
	}

	-- Better syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function () require('nvim-treesitter.install').update({with_sync = true}) end,
		config = [[require('config.treesitter')]]
	}

	-- All-in-one language server engine
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		},
		config = [[require('config.lsp')]]
	}
		
	use {
		'tpope/vim-surround'
	}
	
	use {
		'gpanders/editorconfig.nvim'
	}
	
	-- Automatically set up your configuration after cloning packer.nvim
	if packer_bootstrap then
		require('packer').sync()
	end
end)
