return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {'joshdick/onedark.vim', config = [[require('config.onedark')]] }
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		config = [[require('config.nvim-tree')]]
	}
	use {'neovim/nvim-lspconfig', config = [[require('config.lsp')]] }
	use {'ms-jpq/coq_nvim', config = [[require('config.coq')]] }
	use {'nvim-telescope/telescope-fzf-native.nvim', run='make'}
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
		config = [[require('config.telescope')]]
	}
	use {
		'ahmedkhalf/project.nvim',
		config = [[require('config.project')]]
	}

	use {
		'jiangmiao/auto-pairs', config = [[require('config.auto-pairs')]]
	}

end)
