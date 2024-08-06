return {
	-- Colors
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme catppuccin-macchiato]])
		end,
	},
	{
		"Mofiqul/vscode.nvim",
	},
	{
		"folke/tokyonight.nvim",
	},
}
