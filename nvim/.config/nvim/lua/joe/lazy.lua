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
	-- { 'github/copilot.vim' },

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
