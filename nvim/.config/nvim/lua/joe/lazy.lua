local plugins = {
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'BurntSushi/ripgrep',
		}
	},
	{ 'theprimeagen/harpoon' },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{ 'Darazaki/indent-o-matic' },
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'startup-nvim/startup.nvim' },

	-- lsp, linting, and formatting
	{ 'github/copilot.vim' },
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer", -- source for text in buffer
			"hrsh7th/cmp-path", -- source for file system paths
			"saadparwaiz1/cmp_luasnip", -- for autocompletion
			"rafamadriz/friendly-snippets", -- useful snippets
			"onsails/lspkind.nvim", -- vs-code like pictograms
		}
	},

	-- themes
	{ 'navarasu/onedark.nvim' },
	{ 'catppuccin/nvim' },
	{ 'lewis6991/gitsigns.nvim' },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	}
}
require("lazy").setup(plugins)
