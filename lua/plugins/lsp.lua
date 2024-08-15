return {
	{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
	"williamboman/mason.nvim", -- package manager for language servers, linters, formatters
	"williamboman/mason-lspconfig.nvim", -- convenience APIs, ensures LSPs installed with mason are set up properly by neovim
	"neovim/nvim-lspconfig", -- neovim-provided config args for launching language servers
	{
		"stevearc/conform.nvim", -- formatting
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				json = { "prettierd" },
				html = { "prettierd" },
			},
			format_on_save = {
				timeout_ms = 500,
			},
		},
	},
	"zapling/mason-conform.nvim", -- makes Mason install formatters specified above
}
